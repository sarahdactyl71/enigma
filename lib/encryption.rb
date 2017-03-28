require './lib/offset'
require './lib/key'
require './lib/character_map'
require 'pry'

class Encryption

  def initialize
    @new_key = Key.new
    @new_offset = Offset.new
  end

  def get_message
    new_message = File.read("./lib/message.txt")
    new_message
  end


  def rotations
    rotation_a
    rotation_b
    rotation_c
    rotation_d 
  end
  
  def rotation_a
    key_a = @new_key.key_a
    off_a = @new_offset.off_a
    rotation_a = key_a + off_a 
  end

  def rotation_b
    key_b = @new_key.key_b
    off_b = @new_offset.off_b
    rotation_b = key_b + off_b 
  end

  def rotation_c
    key_c = @new_key.key_c
    off_c = @new_offset.off_c
    rotation_c = key_c + off_c 
  end

  def rotation_d
    key_d = @new_key.key_d
    off_d = @new_offset.off_d
    rotation_d = key_d + off_d 
  end

  def encrypt 
    char_map = Charactermap.new.character_map
    input = get_message.chars
    active_input = []
    secret_word  = ""
    until input.empty?
      active_input = input.shift(4)
      active_input.each_with_index do |char, i|
        if i == 0
          secret_word << char_map.rotate(rotation_a)[(char_map.index(char))]
        elsif i == 1
          secret_word << char_map.rotate(rotation_b)[(char_map.index(char))]
        elsif i == 2
          secret_word << char_map.rotate(rotation_c)[(char_map.index(char))]
        else
          secret_word << char_map.rotate(rotation_d)[(char_map.index(char))]
        end
      end
    end
    secret_word
    # get_message.chars.each_with_index { |char| new_word << char_map.rotate(rotation_a)[(char_map.index(char))]}
    # new_word
  end
    
end
#binding.pry
#""
