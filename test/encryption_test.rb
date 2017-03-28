gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require './lib/key'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def test_encryption_exists
    secret = Encryption.new
    assert_instance_of Encryption, secret
  end

  def test_can_we_receive_message
    secret = Encryption.new

    assert_equal "the quick brown fox jumps over the lazy dog 1 2 3 4", secret.get_message
  end

  def test_what_are_rotation_values
    secret = Encryption.new
    new_key = Key.new 
    new_offset= Offset.new
    assert_equal 89, secret.rotation_a
    assert_equal 18, secret.rotation_b
    assert_equal 70, secret.rotation_c
    assert_equal 34, secret.rotation_d
  end

  def test_the_message_is_encrypted
    secret= Encryption.new

    assert_equal "2z84z.. to5lxad4o6n4s.cj1oepn90nqw0fjdo4m6 4 os4.ou", secret.encrypt
  end

end