require "roman_numeral_converter/version"

module RomanNumeralConverter
  class Converter
    NUMERAL_MAPPINGS = [
      [10, 'X'],
      [9, 'IX'],
      [5, 'V'],
      [4, 'IV'],
      [1, 'I'],
    ]

    def convert(n)
      result = ''

      NUMERAL_MAPPINGS.each do |numeral, glyph|
        while n >= numeral 
          result << glyph
          n -= numeral
        end
      end
  
      result
    end
  end
end
