#encoding: utf-8
require 'json'
module SetRequestParameter

  attr_accessor :options   #, :header, :body, :query, :parameter


  def set_options
    options[:header] = @header unless @header.nil?
    options[:body] = @body unless @body.nil?
    options[:query] = @query unless @query.nil?
  end

  def set_header
    @hearer = @parameter
  end

  def set_body
    @body = @parameter
  end

  def set_query
    @query = @parameter
  end
  #json字符串转hash
  def json_to_hash(parameter)
    begin
      @parameter = JSON.parse(parameter)
    rescue JSON::ParserError => error
      puts "不是json格式", error
    end
  end
  #赋值给@parameter,参数类型为hash
  def table_hash(parameter={})
    @parameter = parameter
  end
  #获取参数----string\Hash
  def get_value(value)
    if value.is_a? Hash
      table_hash(value)
    else
      json_to_hash(value)
    end
  end
  #获取参数---文件类型
  def get_file(filepath)
    begin
      file = File.read(filepath)
      @parameter = json_to_hash(file)
    rescue Errno::ENOENT => error
      puts "文件不存在,请确认路径", error
    end

  end



end