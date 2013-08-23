#!/usr/bin/env ruby -w
# encoding: GBK
#泛用生成器
class Builder
  #生成输出信息
  def self.build(folder_name,area,build_proc)
    export = build_proc.call(area)
    MDDoc.new(folder_name,area.name,export)
  end
end


