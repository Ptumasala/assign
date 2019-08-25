require './features/modules/base_header'
class HeaderSection < BaseHeader

  def initialize(driver)
    @driver = driver
  end

  def menu_button
    @driver.find_element(accessibility_id: 'Open navigation drawer')
  end

  def header_name(name)
    @driver.find_element(xpath: "//android.widget.TextView[@text='#{name}']")
  end

end