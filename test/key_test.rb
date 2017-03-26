require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

 def test_does_key_exist
   key = Key.new(81625)
   assert_instance_of Key, key
  end

  def test_what_are_the_digits
    key = Key.new(81625)
    assert_equal 81625, key.digits 
  end

  def test_what_is_key_a
    key = Key.new(81625)
    key2 = Key.new(68981)
    assert_equal 81, key.key_a 
    assert_equal 68, key2.key_a
  end

  def test_what_is_key_b
    key = Key.new(81625)
    key2 = Key.new(68981)
    assert_equal 16, key.key_b 
    assert_equal 89, key2.key_b
  end

  def test_what_is_key_c
    key = Key.new(81625)
    key2 = Key.new(68981)
    assert_equal 62, key.key_c
    assert_equal 98, key2.key_c
  end

  def test_what_is_key_d
    key = Key.new(81625)
    key2 = Key.new(68981)
    assert_equal 25, key.key_d 
    assert_equal 81, key2.key_d
  end

end