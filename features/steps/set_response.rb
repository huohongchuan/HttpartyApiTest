#encoding: utf-8
require 'json'
require 'jsonpath'
require 'httparty'

module SetResponse
  attr_accessor :response

#
  def response_hash
    JSON.parser(self)
  end

  def get_header
    response.headers.inspect
  end

  def get_body
    response.body
  end

  def get_code
    response.code
  end

  def get_message
    response.message
  end
end