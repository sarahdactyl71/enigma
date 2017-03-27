gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset.rb'
require './lib/key.rb'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def test_encryption_exists
    secret = Encryption.new
    assert_instance_of Encryption, secret
  end
end