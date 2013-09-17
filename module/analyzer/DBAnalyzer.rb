#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ����ݽ�����
class DBAnalyzer
  attr_reader :area#�������
  #��ʼ��
  def initialize(host = '(local)', username = 'sa', password = '123456', log = Log.new)
    @host = host
    @username = username
    @password = password
    @area = nil
    @log = log
  end
  #�������ݿ�����
  def analyze(database_name)
    DBEntity.set_connector(DBConnector.new(@host,@username,@password))
    DBEntity.open(database_name){|db| analyze_db(db)}
    @area
  end
  #�������ݿ�ʵ��
  def analyze_db(db,area_name = 'db_out')
    @area = MDArea.new(area_name)
    name_space = MDNameSpace.new('temporary','db')
    puts '��ʼ��ȡ������...'
    db.get_table_name_arr.each do |table_name|
      puts table_name
      table = analyze_table(table_name, db)
      name_space.add_table(table)
    end
    puts '�����ݶ�ȡ���'
    @area.add_name_space(name_space)
    @area.reallocate_namespace
    @area
  end
  #���ݷ������ݿ���ָ��������
  def analyze_table(table_name,db)
    #@log.push("���ڶ�ȡ: #{table_name}")
    table_exp = db.get_table_exp(table_name)
    table = MDTable.new(table_name,table_exp)
    analyze_field(table,db)
    #analyze_data(table,db)
    table
  end
  #����ָ������ֶβ����
  def analyze_field(table,db)
    key_arr = ['COLUMN_NAME','DATA_TYPE','IS_NULLABLE','CHARACTER_MAXIMUM_LENGTH']
    key_arr += ['NUMERIC_PRECISION','NUMERIC_SCALE']
    result_hash = db.get_table_fields_info(table.name,key_arr)
    exp_hash = db.get_table_field_exp(table.name)
    pk_arr = db.get_table_pk_arr(table.name)
    idpk = db.get_table_idpk(table.name)
    result_hash.each do |k,v|
      name = k
      type = analyze_fieldtype(v)
      null = v['IS_NULLABLE'] == 'YES' ? 'T' : 'F'
      p = pk_arr.include?(k) ? 'T' : 'F'
      explanation = exp_hash[k]
      identity = idpk == k ? 'T' : 'F'
      table.add_field(MDField.new(table,name,type,null,p,explanation,'',identity))
    end
  end
  #����ָ��������ݲ����
  def analyze_data(table,db)
    data_arr = db.get_table_data(table.name)
    data_arr.each{|data_hash| table.add_data(MDData.new(data_hash))}
  end
  #�����ֶε����������Ϣ
  def analyze_fieldtype(info)
    type = info['DATA_TYPE']
    case type
    when 'int','text','datetime','money'; type
    when 'nchar','nvarchar'; "#{type}(#{info['CHARACTER_MAXIMUM_LENGTH']})"
    when 'decimal'
      prec = info['NUMERIC_PRECISION']
      scale = info['NUMERIC_SCALE']
      "#{type}(#{prec}, #{scale})"
    when 'bit','float'; type
    else
      puts "�ֶ�����δʶ��#{type}"
      type
    end
  end
end


