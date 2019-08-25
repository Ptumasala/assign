Given(/^That the conversions are saved$/) do
  @saved_data = Stored_conversions.new(@saved_data.base_value, @saved_data.conversion_value)
end

Then(/^I see that conversions are being saved$/) do
  historyLine = @driver.find_element(id: 'history_single_line')
  historyLine.click
  expect(@pages.numbers_screen.conversion_section_element.text).to eql @saved_data.conversion_value
  expect(@pages.numbers_screen.base_section.text).to eql @saved_data.base_value
end


