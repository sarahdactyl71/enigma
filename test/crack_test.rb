gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

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

    assert_equal 89, c.transformer
    assert_equal 2, c.transfomer_b
    assert_equal 1, c.transfomer_c
    assert_equal 3, c.transfomer_d
  end
end