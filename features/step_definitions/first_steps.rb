require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox


# Givens
Given("The page loads") do
  driver.navigate.to "http://johnmboudreaux.com"
end

Given("I am at the portfolio section") do
  driver.find_elements(:id, "portfolio-section")
end

# Whens
When("I click on the header chevron") do
  driver.find_element(:id, "header-chevron").click
end

When("I click on Github Repository button") do
  driver.find_element(:class, "button").click
end


# Thens
Then("The page should scroll down to my portfolio section") do
    wait = Selenium::WebDriver::Wait.new(:timeout => 6) # seconds
  begin
    element = wait.until { driver.find_element(:class => "major") }
    expect(element.text).to eq('My Portfolio')
  ensure
    # driver.quit()
  end
end

Then("I should be redirected to the github codebase for that project") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 3) # seconds
  driver.quit()
end