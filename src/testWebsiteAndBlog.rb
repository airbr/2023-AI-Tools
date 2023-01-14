# Create a program that will test the website morganwebdev.com and the blog morganwebdev.org and report any errors.
# Create a program that will test the website morganwebdev.com and the blog morganwebdev.org and report any errors.
require 'test/unit'
require 'rubygems'
require 'selenium-webdriver'

class TestMorganWebDev < Test::Unit::TestCase
  def setup
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.morganwebdev.com/"
    @base_url2 = "http://www.morganwebdev.org/"
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end

  def test_morganwebdevcom
    @driver.get(@base_url + "/")
    @driver.find_element(:class, 'CTA-button').click
  end

  def test_morganwebdevorg
    @driver.get(@base_url2 + "/")
    @driver.find_element(:class, 'helvetica').click
  end
end
