#!/usr/bin/env ruby -w
# encoding: GBK
#������������
class MainInterface < BaseInterface
  #��ʼ��
  def initialize
    super
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
    puts "�����˳�..."
    super
  end
  #�˵��ж�
  def menu_determine
    case @input
    when "c"
      cli = ManageAreaInterface.new
      cli.main
    when "t"
      puts "��ʱ���ṩ�˹��ܡ�"
    when "q"
      @statu = "quit"
    else
      puts "��������Ч��"
    end
  end
  #��ʾ�˵�
  def show_menu
    puts "----------------------------"
    puts "   ����c��ѡ��������      "
    puts "   ����t��ֱ�ӽ���ת��      "
    puts "   ����q�˳�ϵͳ            "
    puts "----------------------------"
  end
end
