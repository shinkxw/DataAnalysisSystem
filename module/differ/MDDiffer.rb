#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱȽ���
class MDDiffer
  #����һ��Ԫ���������Ԫ���ݣ������������ռ��ɾ��
  def update_by(new_area)
    new_area.each do |new_name_space|
      old_name_space = find_name_space(new_name_space.name)
      if old_name_space != nil
        old_name_space.update_by(new_name_space)
      else
        add_name_space(new_name_space)
        p "MDArea: �������µ������ռ�:#{new_name_space.name}"
        new_name_space.each do |table|
          p "MDArea: �������µı�:#{table.name}"
        end
      end
    end
  end
  #���������ռ䣬�����Ǳ��ɾ��
  def update_by(new_name_space)
    new_name_space.each do |new_table|
      old_table = find_table(new_table.name)
      if old_table
        old_table.update_by(new_table)
      else
        add_table(new_table)
        p "MDNameSpace: �������µı�:#{new_table.name}"
      end
    end
  end
  #���±�
  def update_by(new_table)
    field_name_arr = get_field_name_arr
    new_table.each_field do |new_field|
      old_field = find_field(new_field.name)
      if old_field
        old_field.update_by(new_field)
        field_name_arr.delete(new_field.name)
      else
        add_field(new_field)
        p "MDTable: ��#{@name}�������µ��ֶ�:#{new_field.name}"
      end
    end
    field_name_arr.each do |field_name|
      need_delete_field = find_field(field_name)
      field_arr.delete(need_delete_field)
      p "MDTable: ��#{@name}ɾ�����ֶ�:#{field_name}"
    end
    @explanation = new_table.explanation if new_table.explanation != ""
    @remark = new_table.remark if new_table.remark != ""
    @data_area = new_table.data_area#���ݸ���
  end
  #�����ֶ�
  def update_by(new_field)
    if @type != new_field.type
      old_type = @type
      @type = new_field.type
      puts "MDField: ��#{@table.name}���ֶ�#{@name}�����ʹ�#{old_type}��Ϊ#{@type}��"
    end
    if @null != new_field.null
      @null = new_field.null
      puts "MDField: ��#{@table.name}���ֶ�#{@name}����Ϊ#{@null == "T" ? "����Ϊ��" : "����Ϊ��"}��"
    end
    if @p != new_field.p
      @p = new_field.p
      puts "MDField: ��#{@table.name}���ֶ�#{@name}#{@p == "T" ? "��Ϊ����" : "����Ϊ����"}��"
    end
    if @identity != new_field.identity
      @identity = new_field.identity
      puts "MDField: ��#{@table.name}���ֶ�#{@name}#{@null == "T" ? "��Ϊ����" : "��������"}��"
    end
    @explanation = new_field.explanation if new_field.explanation != ""
    @remark = new_field.remark if new_field.remark != ""
  end
end