#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'

class ExcelLoader
  def self.open(path)
    mgmt = WIN32OLE.connect('winmgmts:\\\\.')
    q_str = "Select * from Win32_Process Where Name ='EXCEL.EXE'"
    ph_arr = mgmt.ExecQuery(q_str).each.map{|p| p.handle}
    
    excel = WIN32OLE::new('excel.Application').tap{|e| e.Visible = false}
    excel.WorkBooks.Open(path)
    yield excel
    excel.WorkBooks.Close
    excel.Quit
    #删excel进程
    mgmt.ExecQuery(q_str).each{|p| p.Terminate() unless ph_arr.include?(p.handle)}
  end
  def self.open_sheet(path, sheet_name);open(path){|excel| yield load_sheet(excel, sheet_name)} end
  def self.get_sheet_data(path, sheet_name);open(path){|excel| return load_sheet(excel, sheet_name)} end
  def self.load_sheet(excel, sheet_name)
    excel.WorkSheets(sheet_name).Activate
    cols = excel.WorkSheets(sheet_name).UsedRange.Columns.Count
    rows = excel.WorkSheets(sheet_name).UsedRange.Rows.Count
    Array.new(rows){|ri| Array.new(cols){|ci| excel.Cells(ri+1, ci+1).value.to_s}}#.gsub(/\s/,"")
  end
end
