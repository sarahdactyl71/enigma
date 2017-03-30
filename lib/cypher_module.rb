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

  def rotate_chars(crypt, char, index)
    if crypt == 'encrypt'
      return MAP.rotate(rotation_a)[MAP.index(char)] if index == 0
      return MAP.rotate(rotation_b)[MAP.index(char)] if index == 1
      return MAP.rotate(rotation_c)[MAP.index(char)] if index == 2
      return MAP.rotate(rotation_d)[MAP.index(char)] if index == 3
    elsif crypt == 'decrypt'
      return MAP.rotate(-rotation_a)[MAP.index(char)] if index == 0
      return MAP.rotate(-rotation_b)[MAP.index(char)] if index == 1
      return MAP.rotate(-rotation_c)[MAP.index(char)] if index == 2
      return MAP.rotate(-rotation_d)[MAP.index(char)] if index == 3
    end
  end
end 