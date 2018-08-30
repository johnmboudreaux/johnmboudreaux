require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

#loads and scrolls feature
Given("The page loads") do
    visit "http://johnmboudreaux.com"
end

When("I click the header cheveron") do
    page.find(:css, '#header-chevron').click
end

Then("I should see {string}") do |string|
    page.should have_content string
end

Then("I should see {string} inside of a {string}") do |text, selector|
    page.should have_selector selector, text: text
end


Then("the page should scroll to the {string} section and show the text {string}") do |text, selector|
    page.should have_selector selector, text: text
end

#back_to_top feature
Given("I am the bottom of the page") do
    visit "http://johnmboudreaux.com"
    find(:link, "BACK TO TOP")
end

Then("I should see an {string} with the href {string}") do |string, string2|
    find(:css, string2).click
end

And("I should be able to click it") do
    find(:css, "#banner").click
end

Then("I should see an {string}") do |string|
    # page.should have_content string
    expect(page).to have_css("img[src*='../../images/moons.JPG']")
end


#button to github feature
