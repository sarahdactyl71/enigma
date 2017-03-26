gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset.rb'

class OffsetTest < Minitest::Test
  def test_the_instance_is_an_offset
    offset = Offset.new

    assert_instance_of Offset, offset
  end

  def test_the_offset_starts_as_date_squared
    offset = Offset.new

    assert_equal 677665909088289, offset.date
  end

  def test_offset_can_return_last_four
    offset = Offset.new

    assert_equal 8289, offset.last_four_digits
  end

end