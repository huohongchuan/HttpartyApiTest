#encoding: utf-8
require 'httparty'

module SetRequest


  def set_url(url)
    @url = url
  end

  def set_method(method, url)
    set_url url
    case method
      when 'GET'
        @response = HTTParty.get @url, @options
      when 'POST'
        @response = HTTParty.get @url, @options
    end

  end

end