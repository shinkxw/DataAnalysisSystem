#!/usr/bin/env ruby -w
# encoding: GBK
#��ͼ����������
class ViewBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :table_arr#�轨����ͼ�ı������
  attr_reader :view_str#���ɵ�view���
  attr_reader :need_delete#�Ƿ�����ɾ�����
  attr_reader :bz_inf_arr#������׼��Ϣ����
  attr_reader :ignore_table_arr#���ӹ���������
  attr_reader :bulid_arr#��������ͼ�ı�������,nilΪȫ����
  @@Short_name = %w(b c d e f g h i j k l m n o p q r s t u v w x y z)
  #��ʼ��
  def initialize(need_delete = true,bulid_arr = nil,log = Log.new)
    @area = nil
    @table_arr = nil
    @view_str = nil
    @need_delete = need_delete
    @bz_inf_arr = nil
    @ignore_table_arr = ["EDU_ELE_01_SCHOOL"]
    @bulid_arr = bulid_arr
    @log = log
  end
  #����view�ű�
  def build(area)
    @area, @view_str, @table_arr = area, "", []
    find_relation_table
    delete_view if @need_delete
    @table_arr.each{|table| add_table_view(table)}
    MDDoc.new("view","#{@area.name}_view",@view_str,"sql")
  end
  #����view�ű���ϣ��
  def build_hash(area)
    @area = area
    @view_str_hash = {}
    @table_arr = []
    find_relation_table
    @table_arr.each do |table|
      @view_str = ""
      add_table_view(table)
      @view_str_hash["#{table.library_name.upcase}/#{table.name}_view.sql"] = @view_str
    end
    MDDoc.new("view",@area.name,@view_str_hash)
  end
  #���ɴ�����ͼ�����
  def add_table_view(table)
    @bz_inf_arr = []
    relation_field_arr = table.get_relation
    @view_str << "\n--#{table.explanation}\n"
    @view_str << "CREATE VIEW [dbo].[VIEW_#{table.name}_DISP]\nAS\n"
    @view_str << get_select_str(table,relation_field_arr)
    @view_str << get_from_str(table,relation_field_arr)
  end
  #����select���
  def get_select_str(table,relation_field_arr)
    select_str = ""
    firstflag = true
    table.field_area.each do |field|
      if firstflag
        select_str << "SELECT "
        firstflag = false
      else
        select_str << "      ,"
      end
      select_str << "a.[#{field.name}]"
      select_str << "--#{field.explanation}\n"
    end
    relation_field_arr.each_index do |index|
      if index < 24
        relationed_field = relation_field_arr[index].relation
        next if @ignore_table_arr.include?(relationed_field.table.name)
        relation_table = relationed_field.table
        i2 = 0
        relation_table.field_area.each do |field|
          next if field.cover == "T"
          if relationed_field.name != field.name
            select_str << "      ,#{@@Short_name[index]}.#{field.name} as "
            select_str << "#{@@Short_name[index]}_#{relation_table.name.split(/_/)[-1]}"
            select_str << "_#{field.name}--#{relation_table.explanation} #{field.explanation}\n"
            #�ֶ��Ƿ������׼
            if field.relation != nil && field.relation.table.name =~ /^EDU_(GB|JY|ZZ|ZJ)_/
              bz_table = field.relation.table
              bz_table.field_area.each do |bz_field|
                if field.relation.name != bz_field.name
                  select_str << "      ,[#{@@Short_name[index]}#{@@Short_name[i2]}].#{bz_field.name} as "
                  select_str << "#{@@Short_name[index]}_#{relation_table.name.split(/_/)[-1]}"
                  select_str << "_#{field.name}_#{bz_field.name}--#{bz_table.explanation} #{bz_field.explanation}\n"
                end
              end
              @bz_inf_arr.push([field,@@Short_name[index],@@Short_name[i2]])
              i2 += 1
            end
          end
        end
      else
        @log.push("ViewBuilder: relation table is too more")
      end
    end
    select_str << "\n"
  end
  #����from���
  def get_from_str(table,relation_field_arr)
    from_str = ""
    from_str << "FROM dbo.#{table.name} AS a"
    relation_field_arr.each_index do |index|
      relationed_field = relation_field_arr[index].relation
      next if @ignore_table_arr.include?(relationed_field.table.name)
      from_str << " LEFT OUTER JOIN\n      "
      from_str << "dbo.#{relationed_field.table.name} "
      from_str << "AS #{@@Short_name[index]} ON"
      from_str << get_table_relation_str(relation_field_arr[index],@@Short_name[index])
    end
    #���ɱ�׼��������
    @bz_inf_arr.each do |bz_inf|
      from_str << " LEFT OUTER JOIN\n      "
      from_str << "dbo.#{bz_inf[0].relation.table.name} "
      from_str << "AS [#{bz_inf[1]}#{bz_inf[2]}] ON"
      from_str << get_table_relation_str(bz_inf[0],"[#{bz_inf[1]}#{bz_inf[2]}]",bz_inf[1])
    end
    from_str << "\nGO\n"
  end
  #��ñ�������
  def get_table_relation_str(this_field,that_short_name,this_short_name = 'a')
    from_str = ""
    this_table = this_field.table
    that_field = this_field.relation
    that_table = that_field.table
    that_table_pk_arr = that_table.get_primary_key
    from_str << " #{this_short_name}.#{this_field.name} = #{that_short_name}.#{that_field.name} "
    from_str << "/*#{this_field.explanation}*/"
    if that_table_pk_arr.delete(that_field) == nil
      @log.push("ViewBuilder: ��#{this_table.name}���ֶ�#{this_field.name}���������ֶ�#{that_field.name}���Ǳ�#{that_table.name}��������")
    else
      field_arr = this_table.get_relation
      that_table_pk_arr.each do |that_table_pk|
        if that_table_pk.relation == nil
          @log.push("ViewBuilder: ��#{that_table.name}������#{that_table_pk.name}��δ����������")
        else
          this_field = field_arr.find{|field| field.relation == that_table_pk.relation}
          if this_field == nil
            @log.push("ViewBuilder: ��δ�ڱ�#{this_table.name}���ҵ����#{that_table.name}������#{that_table_pk.name}����ͬһ�ű���ֶ�")
          else
            from_str << " AND #{this_short_name}.#{this_field.name} = #{that_short_name}.#{that_table_pk.name} "
            from_str << "/*#{this_field.explanation}*/"
          end
        end
      end
    end
    from_str
  end
  #����ɾ����ͼ���
  def delete_view
    @view_str << "--ɾ����ͼ\n"
    #���ݱ������ɾ����ͼ���
    @table_arr.each do |table|
      @view_str << "if exists (select 1 from  sysobjects where  id = object_id('VIEW_#{table.name}_DISP')\n"
      @view_str << "            and   type = 'V')\n"
      @view_str << "   drop view VIEW_#{table.name}_DISP\nGO\n"
    end
  end
  #���Ҵ��ڹ����ı�
  def find_relation_table
    tarr = @area.get_table_arr
    @table_arr = @bulid_arr ? tarr.select{|t| @bulid_arr.include?(t.name)} : tarr.select{|t| t.has_view?}
  end
  #���ݹ����ֶλ���������ı�
  def get_relation_table_arr(relation_field_arr)
    relation_field_arr.collect{|relation_field| relation_field.table}
  end
end
