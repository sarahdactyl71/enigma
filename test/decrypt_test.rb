gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'
require 'pry'

class DecryptTest < Minitest::Test
  def test_decrypt_exists
    d = Decrypt.new

    assert_instance_of Decrypt, d
  end

  def test_chars_can_be_decrypted
    d = Decrypt.new

    assert_equal "t", d.decrypt_chars("2", 0)
    assert_equal "h", d.decrypt_chars("z", 1)
    assert_equal "e", d.decrypt_chars("8", 2)
    assert_equal " ", d.decrypt_chars("4", 3)
  end

  def test_can_we_get_secret_message
    d = Decrypt.new

    assert_equal "2z84z.. to5lxad4o6n4s.cj1oepn90nqw0fjdo4m6 4 os4.ou", d.get_secret
  end
  
  def test_a_secret_message_can_be_decrypted
    d = Decrypt.new

    assert_equal "the quick brown fox jumps over the lazy dog 1 2 3 4", d.decrypter    
  end
end
