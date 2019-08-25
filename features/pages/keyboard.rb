require './features/modules/base_keyboard'
# contains all application's keyboard elements
class Keyboard < BaseKeyboard
  def initialize(driver)
    @driver = driver
  end

  def keyboard
    @driver.find_element(id: 'keypad')
  end

  def keyboard_digit(digit)
    keyboard.find_element(xpath: "//android.widget.Button[@text='#{digit}']")
  end
end
