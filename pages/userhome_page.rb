class UserHomePage < AbstractPage

	def initialize(driver)
		super(driver)
		@logout = @browser.link(:href,'/logout')
		@user = @browser.link(:class,'dropdown-toggle ng-binding')
	end 

	def click_logout
		@logout.click
	end
	
	def click_user
		@user.click
	end
end
