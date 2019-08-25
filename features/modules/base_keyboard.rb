# contains all actions for Keyboard elements
class BaseKeyboard

  def input_number(number)
    digits = number.split('')
    digits.each do |digit|
      keyboard_digit(digit).click
    end
  end

end