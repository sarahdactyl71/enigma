require './lib/character_map'

module Cyphers
  include Charactermap

  def rotation_a
   @new_key.key_a + @new_offset.off_a
  end

  def rotation_b
    @new_key.key_b + @new_offset.off_b
  end

  def rotation_c
    @new_key.key_c + @new_offset.off_c
  end

  def rotation_d
     @new_key.key_d + @new_offset.off_d
  end

  def rotate_chars(char, index)
    return char_map.rotate(rotation_a)[char_map.index(char)] if index == 0
    return char_map.rotate(rotation_b)[char_map.index(char)] if index == 1
    return char_map.rotate(rotation_c)[char_map.index(char)] if index == 2
    return char_map.rotate(rotation_d)[char_map.index(char)] if index == 3
  end
end 