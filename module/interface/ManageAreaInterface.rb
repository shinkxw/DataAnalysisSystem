#!/usr/bin/env ruby -w
# encoding: GBK
#����Ԫ���������
class ManageAreaInterface < BaseInterface
  #��ʼ��
  def initialize
    super
  end
  #��ʼ����
  def start
    super
    @area_hash = {}
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
    when "n"#�½�������
      puts "����Ҫ�½���������������:"
      get_input
      if @input != ""
        AreaManager.create_area(@input)
      else
        puts "���ֲ���Ϊ��!"
      end
    when "d"#ɾ��������
      puts "����Ҫɾ�����������Ķ�Ӧ����:"
      get_input
      area_name = @area_hash[@input]
      if area_name != nil
        puts "�����Ƿ�Ҫɾ���������� #{area_name}?(Y/N)"
        if get_bool
          AreaManager.delete_area(area_name)
          puts "ɾ���ɹ���"
        end
      else
        puts "�����������"
      end
    when "q"#�����ϼ�Ŀ¼
      @statu = "quit"
    else
      area_name = @area_hash[@input]
      if area_name != nil#���빤����
        WorkAreaInterface.new(area_name)
      else
        puts "��������Ч��"
      end
    end
  end
  #��ʾ�˵�
  def show_menu
    puts "----------------------------"
    show_all_area
    puts "   ���빤������Ӧ�������   "
    puts "   ����n�½�������          "
    puts "   ����dɾ��������          "
    puts "   ����q�����ϼ�Ŀ¼        "
    puts "----------------------------"
  end
  #��ʾ���еĹ�������
  def show_all_area
    num = 1
    puts "   ���й�������           "
    AreaManager.get_all_area_name.each do |name|
      puts "   #{name.ljust(16)}#{num.to_s} "
      @area_hash[num.to_s] = name
      num += 1
    end
  end
end
