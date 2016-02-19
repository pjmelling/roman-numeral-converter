require 'test_helper'

class RomanNumeralConverterTest < Minitest::Test
  def setup
    @converter = RomanNumeralConverter::Converter.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::RomanNumeralConverter::VERSION
  end

  def test_it_converts_1_to_I
    assert_equal 'I', @converter.convert(1)
  end

  def test_it_converts_2_to_II
    assert_equal 'II', @converter.convert(2)
  end

  def test_it_converts_4_to_IV
    assert_equal 'IV', @converter.convert(4)
  end

  def test_it_converts_5_to_V
    assert_equal 'V', @converter.convert(5)
  end

  def test_it_converts_6_to_VI
    assert_equal 'VI', @converter.convert(6)
  end

  def test_it_converts_9_to_IX
    assert_equal 'IX', @converter.convert(9)
  end

  def test_it_converts_10_to_X
    assert_equal 'X', @converter.convert(10)
  end

  def test_it_converts_20_to_XX
    assert_equal 'XX', @converter.convert(20)
  end
end
