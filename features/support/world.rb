module ApiTestModule
	
	def interfacetest
		@http ||= InterfaceTestDemo.new
	end
end


World(ApiTestModule)