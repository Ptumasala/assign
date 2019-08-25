# Mobile helper methods
module MOBILE
  def self.swipe(direction)
    swipe_coordinates = case direction
                        when 'down'
                          { start_x: 0.5, start_y: 0.65, end_x: 0.5, end_y: 0.35,
                            duration: 600 }
                        when 'up'
                          { start_x: 0.5, start_y: 0.35, end_x: 0.5, end_y: 0.65,
                            duration: 600 }
                        when 'right'
                          { start_x: 0.02, start_y: 0.5, end_x: 0.6, end_y: 0.5,
                            duration: 600 }
                        when 'left'
                          { start_x: 0.92, start_y: 0.5, end_x: 0.64, end_y: 0.5,
                            duration: 600 }
                        else
                          raise('wrong direction selected')
                        end
    Appium::TouchAction.new.swipe(swipe_coordinates).perform
  end
end
