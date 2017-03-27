gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_object_is_an_enigma
    e = Enigma.new

    assert_instance_of Enigma, e
  end

  def test_character_map_is_complete
    e = Enigma.new

    assert_instance_of Array, e.character_map
    
    assert_equal 39, e.character_map.length
  end

end