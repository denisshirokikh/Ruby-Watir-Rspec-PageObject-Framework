class HomePage < AbstractPage

	def initialize(driver)
		super(driver)
		@login = @browser.link(:id,'navLogin')
		@userid = @browser.text_field(:id,'userID')
		@password = @browser.text_field(:id,'password')
		@signin = @browser.button(:id,'login')
	end 

	def click_login
		@login.click
	end

	def enter_userid(value)
		@userid.set value
	end
	
	def enter_password(value)
		@password.set value
	end
	
	def click_signin
		@signin.click
	end

end
