require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^We navigate to the homepage$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/"
end

When(/^I input "(.*)" into the username field$/) do |username|	
	element = driver.find_element(:id, "user_email")
	element.send_keys username
end

When(/^I input "(.*)" into the password field$/) do |password|
	element = driver.find_element(:id, "user_password")
	element.send_keys password
end

When(/^I sign in RD Station$/) do	
	element = driver.find_element(:xpath, "/html/body/div[1]/div[1]/div/div/div[1]/section/form/div[3]/div[2]/input")
	element.click
	sleep 5.0
end

Given(/^I go in the leads segmentation page$/) do	
	element = driver.find_element(:xpath, "//*[contains(text(),'Relacionar')]")
	element.click
    element = driver.find_element(:xpath, "//*[contains(text(),'Segmentação de Leads')]")
	element.click
	sleep 2.0
end

When(/^I click "(.*)" button$/) do |button|
	xpath = "//*[contains(text(),'$value$')]"
    xpath["$value$"] = button
    puts "Xpath value: "+ xpath
	element = driver.find_element(:xpath, xpath)
	element.click
end

When(/^I click button for include an new segmentation$/) do
	element = driver.find_element(:css, "html body.modal-open section#content div#segmentation-name-modal.modal.fade.in div.modal-dialog div.modal-content div.modal-footer input.btn.btn-primary.js-create-button")
	element.click
end

When(/^I input "(.*)" value in therm field$/) do |value|
   element = driver.find_element(:xpath, "/html/body/section/div[1]/form/div[3]/div/div[1]/div[2]/div/div[1]/div[5]/input")
   element.send_keys value
   sleep 1.0
end	

When(/^I input "(.*)" value in segmentation name field$/) do |value|
  element = driver.find_element(:name,"segmentation_name")
  element.send_keys value
  sleep 3.0
end	


When(/^I click save button$/) do 
 element = driver.find_element(:id,"save-segmentation")
 element.click
 sleep 1.0
end

Then(/^Check "(.*)" value is display in page$/) do |value|
	xpath = "//*[contains(text(),'$value$')]"
	xpath["$value$"] = value	
	puts "Xpath value: "+ xpath
	element = driver.find_element(:xpath,xpath)
	result = element.text
end

Then(/^I close the homepage$/) do
	driver.quit
end	