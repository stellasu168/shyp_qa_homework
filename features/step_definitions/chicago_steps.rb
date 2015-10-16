Given(/^I open browser and navigate to "([^"]*)"$/) do |url|
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  @browser.navigate.to url
end


Then(/^I type "([^"]*)" to Email$/) do |email|
  @browser.find_element(:id, "email").send_keys email
end

Then(/^I type "([^"]*)" to Zip code$/) do |zip_code|
  @browser.find_element(:id, "postCode").send_keys zip_code
end

Then(/^I click Sign up button$/) do
  @browser.find_element(:id, "signup-submit").click
end

Then(/^I see You're on the list page$/) do
  @browser.find_element(:class, "close-reveal-modal").click
end

