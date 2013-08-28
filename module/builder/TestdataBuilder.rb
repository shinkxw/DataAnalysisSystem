#!/usr/bin/env ruby -w
# encoding: GBK
#测试数据生成器
class TestdataBuilder
  attr_reader :area#待生成的元数据
  attr_reader :sql_str#生成的sql语句
  attr_accessor :table_config#hash配置表，键为表名称，值为需生成测试数据数量
  attr_accessor :build_rule#数据生成规则hash表，键为数据类型，值为生成方法
  #初始化
  def initialize(table_config, build_rule, log = Log.new)
    @area = nil
    @sql_str = nil
    @table_config = table_config
    @build_rule = build_rule
    @log = log
  end
  #生成测试数据插入脚本
  def build(area, config)
    @area = area
    @sql_str = ""
    get_spanning_tree
    @area.each do |name_space|
      add_name_space_script(name_space)
    end
    MDDoc.new("sql",@area.name,@sql_str,"sql")
  end
  #根据表关联关系建立生成依赖树
  def get_spanning_tree
    @table_config
    
  end
  #
end

