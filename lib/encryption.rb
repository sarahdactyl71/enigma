require './lib/offset'
require './lib/key'
require './lib/character_map'
require 'pry'

class Encryption

  def initialize

  end

  def get_message
    new_message = File.read("./lib/message.txt") 
  end


  def rotations
    new_key = Key.new 
    new_offset= Offset.new
    rotation_a = rotation_a(new_key, new_offset)
    rotation_b = rotation_b(new_key, new_offset)
    rotation_c = rotation_c(new_key, new_offset)
    rotation_d = rotation_d(new_key, new_offset)
  end
  
  def rotation_a(new_key, new_offset)
    key_a = new_key.key_a
    off_a = new_offset.off_a
    rotation_a = key_a + off_a 
  end

  def rotation_b(new_key, new_offset)
    key_b = new_key.key_b
    off_b = new_offset.off_b
    rotation_b = key_b + off_b 
  end

  def rotation_c(new_key, new_offset)
    key_c = new_key.key_c
    off_c = new_offset.off_c
    rotation_c = key_c + off_c 
  end

  def rotation_d(new_key, new_offset)
    key_d = new_key.key_d
    off_d = new_offset.off_d
    rotation_d = key_d + off_d 
  end

  def encrypt 
    message_length = get_message.chars.length
    message_length.times do 
    
  end

    
end
# binding.pry
# ""
