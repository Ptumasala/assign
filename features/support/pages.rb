# Initializes all page object classes
class Pages
  attr_accessor :keyboard, :side_menu, :header_section, :numbers_screen, :history

  def initialize(driver)
    @keyboard = Keyboard.new(driver)
    @side_menu = SideMenu.new(driver)
    @header_section = HeaderSection.new(driver)
    @numbers_screen = NumbersScreen.new(driver)
    @history = History.new(driver)
  end

end