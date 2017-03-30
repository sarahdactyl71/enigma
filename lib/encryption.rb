require './lib/offset'
require './lib/key'
require './lib/character_map'
require './lib/cypher_module'
require 'pry'

class Encryption
  include Cyphers

  def initialize
    @new_key = Key.new
    @new_offset = Offset.new
  end

  def get_message
    File.read("./lib/message.txt")
  end

  def char_map
    char_map = Charactermap.new.character_map
  end

  def rotate_chars(char, index)
    return char_map.rotate(rotation_a)[char_map.index(char)] if index == 0
    return char_map.rotate(rotation_b)[char_map.index(char)] if index == 1
    return char_map.rotate(rotation_c)[char_map.index(char)] if index == 2
    return char_map.rotate(rotation_d)[char_map.index(char)] if index == 3
  end

  def encrypter
    input = get_message.chars
    active_input = []
    secret_word  = ""
    until input.empty?
      active_input = input.shift(4)
      active_input.each_with_index do |char, i|
        secret_word << rotate_chars(char, i)
      end
    end
    secret_word
  end

  def secret_writer
    new_file = File.open("./lib/secret_message.txt", "w")
    new_file.write(encrypter)
  end
    
end
