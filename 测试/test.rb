#!/usr/bin/env ruby -w
# encoding: GBK
    require "rubygems"
    gem "deprecated"
require 'dbi'

class Server
  attr_reader :name
  def initialize(name,username, password, database)
    @server_name=name
    @username = username
    @password = password
    @database = database
    @dbh=DBI.connect("DBI:ADO:Provider=SQLNCLI;Data Source=#{name};Persist Security Info=False;User ID=#{@username};password=#{@password};Initial Catalog=#{database};")
  end
  def databases
    db=Array.new
    @dbh.select_all('SELECT name FROM master.sys.databases ORDER BY 1') do | row |
      db.<< Database.new(@dbh,row[0])
    end 
    db
  end
end

class Database
  attr_reader :name
  def initialize(dbh,name)
    @dbh=dbh
    @name=name
  end
end

server=Server.new("hostname","username","password","database_name")
server.databases.each {|x| puts x.name}