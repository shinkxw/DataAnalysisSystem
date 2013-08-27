#!/usr/bin/env ruby -w
# encoding: GBK
#model����������
class ModelBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :model_str#���ɵ�model���
  attr_reader :ignore_name_space_arr#����Ҫ����model���ݵ������ռ�
  attr_reader :builder_version#�������汾
  #��ʼ��
  def initialize(log = Log.new)
    @area = nil
    @model_str = nil
    @file_hash = {}
    @ignore_name_space_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ)
    @builder_version = "0.1"
    @log = log
  end
  #����model����
  def build(area)
    @area = area
    @area.each do |name_space|
      build_name_space_model(name_space) unless @ignore_name_space_arr.include?(name_space.name)
    end
    MDDoc.new("model",@area.name,@file_hash)
  end
  #����name_space��model����
  def build_name_space_model(name_space)
    name_space.each do |table|
      @model_str = ""
      @model_str << "namespace HanRuEdu.LDAL\n{\n    using System;\n    "
      @model_str << "using System.Collections.Generic;\n    using System.ComponentModel.DataAnnotations;\n\n"
      @model_str << "    [MetadataType(typeof(#{table.name}_metadata))]\n"
      @model_str << "    public partial class #{table.name}\n    {\n"
      @model_str << "        public #{table.name}()\n        {\n"
      table.field_area.each do |field|
        type = field.split_type
        if field.null == "F"
          if type[0] == "String"
            @model_str << "            #{field.name} = \"\";\n"
          end
        end
      end
      @model_str << "        }\n"
      @model_str << "        public class #{table.name}_metadata\n        {\n"
      table.field_area.each do |field|
        type = field.split_type
        if field.null == "F"
          if type[0] == "String"
            @model_str << "            [Required(ErrorMessage = \"����\",AllowEmptyStrings = true)]\n"
          else
            @model_str << "            [Required(ErrorMessage = \"����\")]\n"
          end
        end
        display_name = /^(?<name>.*?)ID$/ =~ field.explanation ? name : field.explanation
        @model_str << "            [Display(Name = \"#{display_name}\")]\n"
        #�ֶ����ͽ���
        if type[0] == "String" && type.size > 1
          @model_str << "            [StringLength(#{type[1]})]\n"
        elsif type[0] == "decimal"
          @model_str << "            [Range(typeof(decimal), \"#{type[1]}\", \"#{type[2]}\")]\n"
        elsif type[0] == "UN"
          p "ModelBuilder: this type cannot be analyze: #{type[0]}"
        end
        if type[0] == "String"
          @model_str << "            [DisplayFormat(ConvertEmptyStringToNull = false)]\n"
        end
        @model_str << "            public "
        @model_str << "#{type[0] == "int" ? "Int32" : type[0]} #{field.name} { get; set; }\n"
        @model_str << "\n\n"
      end
      @model_str << "        }\n    }\n"
      @model_str << "}\n"
      @file_hash["#{table.name.split("_")[1]}/#{table.name}_MODEL.cs"] = @model_str
    end
  end
end


