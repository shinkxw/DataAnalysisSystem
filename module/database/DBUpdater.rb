#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ������
class DBUpdater
  #��ʼ��
  def initialize(area,db);@area,@db = area,db end
  #��ʾ�����������ݿ��Ĳ���(˵����)
  def show_db_diff(is_exp = true)
    diff = compare_db
    if diff.has_diff?
      diff.send('show_diff' << (is_exp ? '' : '2'))
    else
      puts('û�в���')
    end    
  end
  #ʹ�ñ�������������ݿ��ṹ
  def update_db
    puts "\n��ʼ�������ݿ�"
    diff = compare_db
    if diff.has_diff?
      puts "\n���������ߵĲ���:\n"#��ʾ����
      diff.show_diff
      puts "\n���ڸ������ݿ����..."#ʹ�ýű������촦����
      diff.db_transform(@db)
      puts "\n�ٴαȽ����߲���..."
      diff = compare_db
      if diff.has_diff?
        puts "\n���ݿ������²�δ�ɹ���"#����
        puts 'δ��������Ϊ��'#��ʾδ��������
        diff.show_diff
      else
        #���������������б�׼������
        puts "\n����ɾ��������ͼ..."
        @db.delete_all_view#ɾ��������ͼ
        puts "\n����������ͼ..."
        view_str = ViewBuilder.new(true).build(@area).get_data_str
        @db.execute(view_str)
        puts "\n���ݿ���³ɹ�"
      end
    else
      puts '���ݿ��ṹ�빤����һ�£��������'
    end
  end
  #��ָ�����ݿ��еı�ṹ���бȽ�
  def compare_db
    puts '�Ƚ���...'
    MDDiffer.new.compare_area(@db.get_db_area,@area)
  end
end