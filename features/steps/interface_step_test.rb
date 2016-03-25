# encoding: utf-8

Given /^我设置http-header为'(.*)'$/ do |hparam|
	InterfaceTestDemo.headers(hparam)
end

Given /^我设置http-cookies为'(.*)'$/ do |cparam|
	InterfaceTestDemo.cookies(cparam)
end

And /^$/ do 



Then /^通过(get|post)方式返回结果为'(.*)'$/ do |mode,code|
    @interface.send_mode(mode)
    @interface.dmp_response.should == code.to_i
end