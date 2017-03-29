gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require './lib/key'
require './lib/encryption'
require 'pry'

class EncryptionTest < Minitest::Test

  def test_encryption_exists
    secret = Encryption.new
    assert_instance_of Encryption, secret
  end

  def test_can_we_receive_message
    secret = Encryption.new

    assert_equal "the quick brown fox jumps over the lazy dog 1 2 3 4 ..end..", secret.get_message
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

  def test_char_map_returns_array_of_chars
    map = Charactermap.new
    assert_kind_of Array, map.character_map
  end

  def test_rotate_chars
    secret = Encryption.new

    assert_equal "2", secret.rotate_chars("t", 0)
    assert_equal "z", secret.rotate_chars("h", 1)
    assert_equal "8", secret.rotate_chars("e", 2)
    assert_equal "4", secret.rotate_chars(" ", 3)
  end

  def test_the_message_is_encrypted
    secret= Encryption.new

    assert_equal "2z84z.. to5lxad4o6n4s.cj1oepn90nqw0fjdo4m6 4 os4.ou4hq8hmq2", secret.encrypter
  end
  
  def test_if_writes_new_secret_file
    e = Encryption.new
    e.encrypter
    new_file = File.open("./lib/secret_message.txt", "r")
    assert_equal "2z84z.. to5lxad4o6n4s.cj1oepn90nqw0fjdo4m6 4 os4.ou", File.read("./lib/secret_message.txt")
  end 

  def test_say_hi
    e = Encryption.new
    assert_equal "hi there", e.say_hi
  end

  def test_what_is_rotation_a
    e = Encryption.new
    assert_equal 89, e.rotation_a
  end
end