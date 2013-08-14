#!/usr/bin/env ruby -w
# encoding: GBK
#���ѡ�����
class ExportAreaInterface < BaseInterface
  #��ʼ��
  def initialize(work_area)
    @work_area = work_area
    super()
  end
  #��ʼ����
  def start
    super
  end
  #����ǰ����
  def before_input
    super
    show_menu
  end
  #��������
  def after_input
    menu_determine
    super
  end
  # ��������
  def terminate
    super
  end
  #�˵��ж�
  def menu_determine
    case @input
    when "s"#����ű�
      puts "�Ƿ����Ϊ�����ļ�?(Y/N)"
      build_folder = get_bool ? false : true
      puts "���ɾ�������?(Y/N)"
      need_delete = get_bool ? true : false
      puts "��Ӳ����������?(Y/N)"
      need_data = get_bool ? true : false
      export('sql',[build_folder, need_delete, need_data])
    when "v"#����ͼ�ű�
      puts "�Ƿ����Ϊ�����ļ�?(Y/N)"
      build_folder = get_bool ? false : true
      puts "���ɾ�������?(Y/N)"
      need_delete = get_bool ? true : false
      export('view',[build_folder, need_delete])
    when "m"#model��֤����
      export('model')
    when "t"#ģ�����
      export('template')
    when "i"#�����ͳ����Ϣ
      export('tableinfo')
    when "q"#�����ϼ�Ŀ¼
      @statu = "quit"
    else
      puts "��������Ч��"
    end
  end
  #��ʾ�˵�
  def show_menu
    puts "----------------------------"
    puts "   ����s�������ű�        "
    puts "   ����v�������ͼ�ű�      "
    puts "   ����m���model��֤����   "
    puts "   ����t���ģ�����        "
    puts "   ����i��������ͳ����Ϣ  "
    puts "   ����q�����ϼ�Ŀ¼        "
    puts "----------------------------"
  end
  #�������
  def export(type,parameters = [])
    t = Time.now
    path = @work_area.send("export_#{type}", *parameters)
		puts "����ʱ�䣺#{Time.now - t}���������#{path}"
  end
end
