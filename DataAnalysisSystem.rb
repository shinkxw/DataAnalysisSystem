#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

t = Time.now
work_area = AreaManager.load_work_area("HANRU")
work_area.export_all
work_area.save_and_close_work_area
p Time.now - t

