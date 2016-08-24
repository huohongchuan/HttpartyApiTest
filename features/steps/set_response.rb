#encoding: utf-8
require 'json'
require 'jsonpath'
require 'httparty'

module SetResponse
  attr_accessor :response, :response_header, :response_body, :response_code, :response_message

#批量替换字符串中"=>"为":"
  def make_to_hash(res)
    bbb = res.gsub(/=>/, ':')
    JSON.parser(bbb)
  end

  def get_response
    @response_header= response.headers.inspect
    @response_body= response.body
    @response_code= response.code
    @response_message= response.message
  end

  def headersh
    make_to_hash @response_header
  end

  def bodysh
    make_to_hash @response_body
  end

  def codesh
    make_to_hash @response_code
  end

  def messagesh
    make_to_hash @response_message
  end
end