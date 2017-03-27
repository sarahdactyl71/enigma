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

    assert_equal "i like cats and dogs. and here is some uses of numbers 4 2 1", secret.get_message
  end
end