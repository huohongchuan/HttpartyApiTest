# encoding: utf-8
#require 'httparty'
require 'json'

require File.dirname(__FILE__)+'/set_request_parameter'
require File.dirname(__FILE__)+'/set_request'
require File.dirname(__FILE__)+'/set_response'

class InterfaceTestDemo
    include SetRequestParameter
    include SetRequest
    include SetResponse


    def initialize
      @options = {}
      @url = ''
    end


    def out
      puts @options
      puts @options.class
    end


end

str = %Q({"Accept":"text/html", "xxxx":"bbb"})
str1 = '{"wx_appid": "wx1b023b900d9317ef", "wx_openid": "oeGgrwBb8saWkLQyzvl15z0A_Bdo"}'
str4 = {:wx_appid => 'wx1b023b900d9317ef', :wx_openid => 'oeGgrwBb8saWkLQyzvl15z0A_Bdo'}

testabc = InterfaceTestDemo.new
#testabc.setheader(str)
#testabc.set_query(str4)
#testabc.get_file("/home/hhc/work/rubytest/hhc.json")
testabc.get_value(str4)
testabc.set_query

testabc.set_options
testabc.options
testabc.set_method('GET', 'http://system.cpd.test.social-touch.com/Api/Kefu/dialogStatus?')
testabc.get_response
#puts testabc.response.headers.inspect
puts testabc.response_header.class
testabc.headersh
#puts testabc.codesh
#ptus testabc.bodysh

#respone = HTTParty.get('http://system.cpd.test.social-touch.com/Api/Kefu/dialogStatus?', aaa)
#respone = HTTParty.get('http://www.baidu.com')
#ccc = respone.headers.inspect
#puts ccc
#puts ccc.class
#bbb = JSON.parse(respone.body)
#ddd = JSON.parse(ccc.gsub!(/=>/, ':'))
#puts ddd.class
#puts ddd
#puts respone.body
#puts bbb
#puts bbb.class