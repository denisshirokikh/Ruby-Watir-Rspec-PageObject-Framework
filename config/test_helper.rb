require 'rubygems'
require 'watir-webdriver'
require 'rspec'
require 'syntax'

require "#{File.dirname(__FILE__)}/../pages/abstract-page.rb"
Dir[File.dirname(__FILE__) + '/../pages/*_page.rb'].each {|file| 
	require file 
}

$BASE_URL = ENV['base_url'] || "http://projecturl.com:5000"

module TestHelper

  def login_as(username, password = "test")
    home_page = HomePage.new(@browser)
    home_page.click_login
    home_page.enter_userid(username)
    home_page.enter_password(password)
    home_page.click_signin
  end
  alias login login_as

  def logout
    begin;
      userhome_page = UserHomePage.new(@browser)
      userhome_page.click_logout
    rescue => e;
     end
  end

  def reset_database
  	#Will call reset database client method
  end

  def visit(page)
    base_url = $BASE_URL
    @browser.goto("#{base_url}#{page}")
  end

  def reset_database_silient

  end

  def assert_link_present_with_text(link_text)
    @browser.links.each { |link|
      return if link.text.include?(link_text)
    }
    raise ("can't find the link containing text: #{link_text}")
  end

  def assert_button_present_with(selector,value)

  end

  def assert_text_present(value)
  	@browser.text.should include value
  end

  def assert_page_title_as(value)

  end

end
