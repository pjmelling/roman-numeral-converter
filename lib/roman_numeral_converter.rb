require "roman_numeral_converter/version"

module RomanNumeralConverter
  TALLY_TABLE = [
    [1, 'I'],
    [4, 'IV'],
    [5, 'V'],
    [9, 'IX'],
    [10, 'X'],
  ]

  class Converter
    def convert(n)
      result = ''

      RomanNumeralConverter::TALLY_TABLE.reverse.each do |p|
        while n >= p[0] 
          result << p[1]
          n -= p[0]
        end
      end
  
      result
    end
  end
end
