#!/usr/bin/env ruby -w
# encoding: GBK
#����������
class Builder
  #���������Ϣ
  def self.build(folder_name,area,build_proc)
    export = build_proc.call(area)
    MDDoc.new(folder_name,area.name,export)
  end
end


