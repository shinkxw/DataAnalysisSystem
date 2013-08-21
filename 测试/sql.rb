#!/usr/bin/env ruby -w
# encoding: GBK
require "win32ole"  
#WIN32OLE.codepage = WIN32OLE::CP_UTF8  
require 'iconv'  
Re_cn = /[\x7f-\xff]/  
  
class MssqlDb  
  attr_accessor :mdb, :connection, :data, :fields  
  
  def initialize(host,mdb,user,pass)  
    @host= host  
    @mdb=@database= mdb  
    @username= user  
    @password= pass  
    @connection = nil  
    @data = nil  
    @fields = nil  
  end  
  
  def open    
    connection_string = "Provider=SQLOLEDB.1;User ID=#@username;password=#@password;Data Source=#@host,1433;Initial Catalog=#@mdb"
    connection_string = "metadata=res://*/GB.csdl|res://*/GB.ssdl|res://*/GB.msl;
provider=System.Data.SqlClient;
provider connection string=&quot;
data source=192.168.0.8,1444;
initial catalog=HanruEdu;persist security info=True;
user id=sa;password=123456;
MultipleActiveResultSets=True;App=EntityFramework&quot;"
    @connection = WIN32OLE.new('ADODB.Connection')  
    @connection.Open(connection_string)   
  end  
  
  def query(sql)  
    recordset = WIN32OLE.new('ADODB.Recordset')  
    recordset.Open(sql, @connection)  
    @fields = []  
    recordset.Fields.each do |field|  
      @fields << field.Name  
    end  
    begin  
      @data = recordset.GetRows.transpose  
    rescue  
      @data = []  
    end  
    recordset.Close  
  end  
  
  def queryGB(sql)  
    if sql =~ Re_cn  
    sql = utf8_to_gb(sql)  
    end  
    recordset = WIN32OLE.new('ADODB.Recordset')  
    recordset.Open(sql, @connection)  
    @fields = []  
    recordset.Fields.each do |field|  
      @fields << field.Name  
    end  
    begin  
      @data = recordset.GetRows.transpose  
    rescue  
      @data = []  
    end  
    recordset.Close  
  end  
  
  def execute(sql)  
    @connection.Execute(sql)  
  end  
  
  def executeGB(sql)  
    if sql =~ Re_cn  
    sql = utf8_to_gb(sql)  
    end  
    @connection.Execute(sql)  
  end  
  
  def close  
    @connection.Close  
  end  
    
  def utf8_to_gb(s)  
    p 'conv to gb18030'  
    Iconv.conv("GB18030//IGNORE","UTF-8//IGNORE",s)  
  end  
  def gb_to_utf8(s)  
    p 'conv to utf8'  
    Iconv.conv("UTF-8//IGNORE","GB18030//IGNORE",s)  
  end    
end  
  db = MssqlDb.new
  db.open
