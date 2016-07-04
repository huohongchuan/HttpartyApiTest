# encoding: utf-8
require 'httparty'
require 'json'
require 'jsonpath'

class InterfaceTestDemo
  include HTTParty
  #attr_accessor :options

  def headers=(hd)
  	header = JSON.parse hd
  	@headers = ｛headers:header}
  end


end

require 'json'
class TestAbc
	def initialize
		@hs = {}
	end
	def test1(h={})
		@hs[:header] = {}
		@hs[:header] = h	
	end

	def test2(b={})
		@hs[:body] = {}
		@hs[:body] = b
	end
	def out
		puts @hs
		puts @hs.class
	end
end
#@hs = Hash.new
str = %Q({"Accept":"text/html", "xxxx":"bbb"})
str1 = '{"login": "email@example.com", "password": "password"}'
str4 = '{"loginxxxxxxxx": "email@example.com", "password": "password"}'
str2 = JSON.parse(str)
str3 = JSON.parse(str1)
str5 = JSON.parse(str4)

testabc = TestAbc.new
testabc.test1(str2)
testabc.test2(str3)
testabc.out
