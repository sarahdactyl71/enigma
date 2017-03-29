require './lib/cypher_module'
require './lib/character_map'
require './lib/offset'
require './lib/key'
require 'pry'


class Decrypt
  include Cyphers
  
  def initialize
    @new_key = Key.new
    @new_offset = Offset.new
  end

  def char_map
    char_map = Charactermap.new.character_map
  end

  def decrypt_chars(char, index)
    return char_map.rotate(-rotation_a)[char_map.index(char)] if index == 0
    return char_map.rotate(-rotation_b)[char_map.index(char)] if index == 1
    return char_map.rotate(-rotation_c)[char_map.index(char)] if index == 2
    return char_map.rotate(-rotation_d)[char_map.index(char)] if index == 3
  end

  def get_secret
    File.read("./lib/secret_message.txt")
  end

  def decrypter
    input = get_secret.chars
    active_input = []
    decrypted_message  = ""
    until input.empty?
      active_input = input.shift(4)
      active_input.each_with_index do |char, i|
        decrypted_message << decrypt_chars(char, i)
      end
    end
    decrypted_message
  end

  def decode_writer
    new_file = File.open("./lib/decoded_message.txt", "w")
    new_file.write(decrypter)
  end

end