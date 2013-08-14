#!/usr/bin/env ruby -w
# encoding: GBK
#���������ƽ���
class WorkAreaInterface < BaseInterface
  #��ʼ��
  def initialize(area_name)
    @work_area = AreaManager.load_work_area(area_name)
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
    puts "���ڹرչ�����"
    @work_area.save_and_close_work_area
    super
  end
  #�˵��ж�
  def menu_determine
    case @input
    when "e"#�������
      ExportAreaInterface.new(@work_area)
    when "s"#�鿴������������
      
    when "u"#���¹���������
      
    when "l"#��ȡ��ʱ������
      
    when "b"#���ݹ�����
      
    when "q"#�뿪������
      @statu = "quit"
    else
      puts "��������Ч��"
    end
  end
  #��ʾ�˵�
  def show_menu
    puts "----------------------------"
    puts "   ����e����������ʽ����  "
    puts "   ����s�ɲ鿴������������  "
    puts "   ����u�ɸ��¹���������    "
    puts "   ����l��ȡ��ʱ�����ݻָ�  "
    puts "   ����b�ɱ��ݹ�����        "
    puts "   ����q�뿪������          "
    puts "----------------------------"
  end
end
