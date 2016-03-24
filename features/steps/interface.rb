# encoding: utf-8
require 'httparty'
require 'json'
require 'jsonpath'

class InterfaceTestDemo
  include HTTParty

	def set_interface(url)
		@path = url
	end

	def str_hash(value1)
	  str1 = value1.split(/&/)
      str2 = Array.new
      str1.each{ |element| str2 << element.split(/=)}
      str3 = Hash[*str2.flatten]
	end

	def set_value(value)
		@value = {:query => str_hash(value) }
	 end

	def get
        @dmp_response = self.class.get(@path,@value)
	end

	def post
		@dmp_response = self.class.post(@path,@value)
	end

	def send_mode(mode=nil)
		if mode == 'get'
		  get
		else
		  post
		end
	end

	def dmp_response
	    #get
		@dmp_response.code
	end

end
