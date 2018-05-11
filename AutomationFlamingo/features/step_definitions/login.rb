driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds


When(/^navigate to Homepage$/) do #describe an event, or an action
  driver.navigate.to "http://flamingo-nightly.symcresol.com"
end

And (/^user input correct email address$/) do #describe an event, or an action
  driver.find_element(:css,'form > div:nth-child(3) > input').send_keys("minhnguyenqc87@gmail.com")
  sleep(1)
end

And (/^user input correct password$/) do #describe an event, or an action
  element = wait.until { driver.find_element(:css => "form > div:nth-child(4) > input") }
  element.send_keys('password')
  sleep(1)
end

And(/^user click to Log me In button$/) do #describe an event, or an action
  driver.find_element(:css,'form > div.buttons-w > button').click
  sleep(2)
end

Then(/^Search Bunkering Plan Screen is shown$/) do #expected outcome 
  begin
    element = driver.find_element(:class,"element-header").text()
    expect("Search Bunkering Plan MEOW MEOW").to eq(element)
  ensure
    driver.quit
  end
end
