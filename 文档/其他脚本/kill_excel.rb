#!/usr/bin/env ruby -w
# encoding: UTF-8
require "win32ole"  

mgmt = WIN32OLE.connect('winmgmts:\\\\.')
#~ str = "Select * from Win32_Process Where Name ='EXCEL.EXE'"
#~ mgmt.ExecQuery(str).each{|item| item.Terminate()}

mgmt.ExecQuery("Select * from Win32_Process").each do |item|
  p "#{item.name}   #{item.Handle}"
end