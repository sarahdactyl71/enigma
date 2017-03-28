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

    assert_equal "cab", secret.get_message
  end

  def test_what_are_rotation_values
    secret = Encryption.new
    new_key = Key.new 
    new_offset= Offset.new
    assert_equal 89, secret.rotation_a(new_key, new_offset)
    assert_equal 18, secret.rotation_b(new_key, new_offset)
    assert_equal 70, secret.rotation_c(new_key, new_offset)
    assert_equal 34, secret.rotation_d(new_key, new_offset)
  end

  def test_the_message_is_encrypted
    secret= Encryption.new
    assert_equal "wr6", secret.encrypt
  end

  def test_does_rotation_return_correct_number
    secret = Encryption.new()

    assert_equal 
  end
end