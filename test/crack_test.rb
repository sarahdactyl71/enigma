gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'
require 'pry'

class CrackTest < Minitest::Test

  def test_does_crack_method_exist
    c = Crack.new
    
    assert_instance_of Crack, c 
  end

  def test_can_we_get_secret_message
    c = Crack.new

    assert_equal "2z84z.. to5lxad4o6n4s.cj1oepn90nqw0fjdo4m6 4 os4.ou4hq8hmq2", c.get_secret
  end

  def test_it_can_find_rotation
    c = Crack.new

    assert_equal 31, c.crack_rotation_a
    assert_equal 22, c.crack_rotation_b
    assert_equal -30, c.crack_rotation_c
    assert_equal 6, c.crack_rotation_d
  end

  def test_does_it_crack
    c = Crack.new
    
    assert_equal "the quick brown fox jumps over the lazy dog 1 2 3 4 ..end.." , c.cracker
  end
end