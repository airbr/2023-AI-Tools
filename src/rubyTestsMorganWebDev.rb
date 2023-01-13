# Create a Test Suite for MorganWebDev.com
require 'test/unit'
require 'rubygems'
require 'selenium-webdriver'

class TestMorganWebDev < Test::Unit::TestCase
  def setup
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.morganwebdev.com/"
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end

  def test_morganwebdev
    @driver.get(@base_url + "/")
    @driver.find_element(:class, 'CTA-button').click
  end
end