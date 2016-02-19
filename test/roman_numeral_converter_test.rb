require 'test_helper'

class RomanNumeralConverterTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RomanNumeralConverter::VERSION
  end

  def test_it_converts_1_to_I
    converter = RomanNumeralConverter::Converter.new
    assert_equal converter.convert(1), 'I'
  end
end
