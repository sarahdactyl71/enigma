gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset.rb'

class OffsetTest < Minitest::Test
  def test_the_instance_is_an_offset
    offset = Offset.new

    assert_instance_of Offset, offset
  end

  def test_the_offset_is_last_4_digits_of_date_square
    offset = Offset.new
  end


end