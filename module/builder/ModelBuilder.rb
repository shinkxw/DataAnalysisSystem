#!/usr/bin/env ruby -w
# encoding: GBK
#model数据生成器
class ModelBuilder
  attr_reader :area#待生成的元数据
  attr_reader :model_str#生成的model语句
  attr_reader :ignore_name_space_arr#不需要生成model数据的命名空间
  #初始化
  def initialize(log = Log.new)
    @area = nil
    @model_str = nil
    @file_hash = {}
    @ignore_name_space_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ)
    @log = log
  end
  #生成model数据
  def build(area)
    @area = area
    @area.each do |name_space|
      build_name_space_model(name_space) unless @ignore_name_space_arr.include?(name_space.name)
    end
    MDDoc.new("model",@area.name,@file_hash)
  end
  #生成name_space的model数据
  def build_name_space_model(name_space)
    name_space.each do |table|
      @model_str = ""
      @model_str << "namespace HanRuEdu.LDAL\n{\n    using System;\n    "
      @model_str << "using System.Collections.Generic;\n    using System.ComponentModel.DataAnnotations;\n\n"
      @model_str << "    [MetadataType(typeof(#{table.name}_metadata))]\n"
      @model_str << "    public partial class #{table.name}\n    {\n"
      @model_str << "        public #{table.name}()\n        {\n"
      table.field_area.each do |field|
        if field.null == "F" && field.split_type[0] == "String"
          @model_str << %(            #{field.name} = "";\n)
        end
        if field.type == 'datetime'
          @model_str << "            #{field.name} = new DateTime(1900, 1, 1);\n"
        end
      end
      @model_str << "        }\n"
      @model_str << "        public class #{table.name}_metadata\n        {\n"
      table.field_area.each do |field|
        type = field.split_type
        if field.null == "F"
          if type[0] == "String"
            @model_str << %(            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]\n)
          else
            @model_str << %(            [Required(ErrorMessage = "必填")]\n)
          end
        end
        @model_str << %(            [Display(Name = "#{field.display_name}")]\n)
        #字段类型解析
        if type[0] == "String" && type.size > 1
          @model_str << "            [StringLength(#{type[1]})]\n"
        elsif type[0] == "decimal"
          @model_str << %(            [Range(typeof(decimal), "#{type[1]}", "#{type[2]}")]\n)
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


