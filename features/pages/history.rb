require './features/modules/base_history'
 
#history page with history items definition

class History < BaseHistory

  def initialize(driver)
    @driver = driver
  end

  def history_sections
    @driver.find_element(id: 'history_item_name')
  end

end