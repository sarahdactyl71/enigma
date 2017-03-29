gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test

  def test_does_crack_method_exist
    c = Crack.new
    
    assert_instance_of Crack, c 
  end
end