load "#{File.dirname(__FILE__)}/../config/test_helper.rb"

describe 'Application:Login Feature' do
	include TestHelper

	it 'login with valid credentials',:tag => "must" do
		login_as("userID","password")
		logout
	end

	it 'login with invalid credentials' do
		login_as("userID","password")
		assert_text_present("Invalid Username or Password")
	end

	after(:each) do
    	
  	end

	before :all do
		@browser = Watir::Browser.new :ff
		@browser.driver.manage.timeouts.implicit_wait = 5
    	@browser.driver.manage.window.maximize
    	@browser.goto $BASE_URL
	end

	after :all do
    	@browser.close
	end

end
