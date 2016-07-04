# encoding: utf-8

Given /^我设置http-header为'(.*)'$/ do |hparam|
	interfacetest.headers = hparam
end

Given /^我设置http-body为'(.*)'$/ do |bparam|
	InterfaceTestDemo.cookies(cparam)
end

When /^我设置请求体为'(.*)'$/ do |options|
	interfacetest.options = 
end

And /^我通过get方式请求'(.*)'$/ do |url|
	InterfaceTestDemo.get(url)
end

And /^我通过post方式请求'(.*)'$/ do |url|
	InterfaceTestDemo.post
end



Then /^通过(get|post)方式返回结果为'(.*)'$/ do |mode,code|
    @interface.send_mode(mode)
    @interface.dmp_response.should == code.to_i
end