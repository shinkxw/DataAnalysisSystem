#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
class ExcelLoader
  def self.open(path)
    excel = WIN32OLE::new('excel.Application').tap{|e| e.Visible = false}
    excel.WorkBooks.Open(path)
    yield excel
    excel.WorkBooks.Close
  end
  def self.open_sheet(path, sheet_name);open(path){|excel| yield load_sheet(excel, sheet_name)} end
  def self.load_sheet(excel, sheet_name)
    excel.WorkSheets(sheet_name).Activate
    cols = excel.WorkSheets(sheet_name).UsedRange.Columns.Count
    rows = excel.WorkSheets(sheet_name).UsedRange.Rows.Count
    Array.new(rows){|ri| Array.new(cols){|ci| excel.Cells(ri+1, ci+1).value.to_s}}#.gsub(/\s/,"")
  end
end
