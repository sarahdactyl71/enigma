gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character_map'

class CharactermapTest < Minitest::Test

  def test_object_is_a_map
    e = Charactermap.new

    assert_instance_of Charactermap, e
  end

  def test_character_map_is_complete
    e = Charactermap.new

    assert_instance_of Array, e.character_map
    
    assert_equal 39, e.character_map.length

    assert_equal "h", e.character_map[7]
  end

end