gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_object_is_an_enigma
    e = Enigma.new

    assert_instance_of Enigma, e
  end

end