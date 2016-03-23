# encoding: utf-8
require 'rspec'

Given /^提供一个服务地址如'(.*)'$/ do |url|
	@interface = Dmp_Interface.new
	@interface.set_interface(url)
end

When /^输入接口参数'(.*)'$/ do |value|
	@interface.set_value(value)
end

Then /^通过(get|post)方式返回结果为'(.*)'$/ do |mode,code|
    @interface.send_mode(mode)
    @interface.dmp_response.should == code.to_i
end