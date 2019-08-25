# contains all actions for Number elements
class BaseNumbersScreen

    def find_category(name)
        return unless type_popup_element_texts.include? name

        until type_popup_element_texts.include? name
          last_category = type_popup_element_texts.last
          MOBILE.swipe('down')
          raise('type not found') if last_category == type_popup_element_texts.last
        end
    end

    def selected_type_name(type)
      type_element(type).text
    end

    def open_type_selection_popup
      base_type_element.click
    end

    def select_base_type(type_name)
      return if selected_type_name('base') == type_name

      open_type_category 'base'
      find_category type_name
      type_popup_elements.each do |element|
        if element.text == type_name
          element.click
          break
        end
      end
    end

    def conversion_type(type_name)
      return if selected_type_name('conversion') == type_name

      open_type_category 'conversion'
      find_category type_name
      type_popup_elements.each do |element|
        if element.text == type_name
          element.click
          break
        end
      end
    end

    def type_popup_element_texts
        text = []
        type_popup_elements.each do |type|
          text.push type.text
        end
        text
    end
    
    def open_type_category(type)
      type_element(type).click
    end

    def conversion_section_text
       conversion_section_element.text
    end

end