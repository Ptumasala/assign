Before do
  @driver.start_driver
  @pages = Pages.new(@driver)
  @saved_data = SavedConversionData.new()
end

After do |scenario|
  scenario_name = scenario.name
  if scenario.failed?
    @driver.driver.save_screenshot("./report_screenshots/#{scenario_name} screenshot.png")
    embed "./report_screenshots/#{scenario_name} screenshot.png", 'image/png'
  end
  @driver.driver_quit
end