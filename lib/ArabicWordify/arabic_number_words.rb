require_relative 'units'
module ArabicWordify
  class ArabicNumberWords
    def self.convert_to_text(number)
      number = convert_arabic_num_to_english_num(number)
      return 'صفر' if number.to_i.zero?

      parts = []
      thousand_index = 0

      while number > 0
        part = number % 1000
        unless part.zero?
          part_text = convert_hundreds(part)
          part_text += " #{THOUSANDS[thousand_index]}" unless thousand_index.zero?
          parts.unshift(part_text)
        end
        number /= 1000
        thousand_index += 1
      end

      parts.join(' و ')
    end

    private

    def self.convert_hundreds(number)
      return UNITS[number] if number <= 19

      hundreds = number / 100
      tens = number % 100
      words = []

      words << HUNDREDS[hundreds * 100] if hundreds > 0

      if tens > 0
        if tens <= 19
          words << UNITS[tens]
        else
          ones = tens % 10
          words << UNITS[ones] if ones > 0
          words << TENS[(tens / 10) * 10]
        end
      end

      words.join(' و ')
    end

    def self.convert_arabic_num_to_english_num(number)
      number.to_s.tr('٠١٢٣٤٥٦٧٨٩', '0123456789').to_i
    end
  end
end