driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds

When(/^Step 1: Navigate to Homepage$/) do #describe an event, or an action
  driver.navigate.to "http://flamingo-nightly.symcresol.com"
end

Then (/^Step 2: Input Email$/) do #expected outcome 
  driver.find_element(:css,'form > div:nth-child(3) > input').send_keys("minhnguyenqc87@gmail.com")
  sleep(1)
  
end

Then (/^Step 3: Input Password$/) do #expected outcome 
  element = wait.until { driver.find_element(:css => "form > div:nth-child(4) > input") }
  element.send_keys('password')
  sleep(1)
end

Then(/^Step 4: Click to Log me In$/) do #expected outcome
  begin
    driver.find_element(:css,'form > div.buttons-w > button').click
    sleep(2)
  ensure
    driver.quit
  end
end
