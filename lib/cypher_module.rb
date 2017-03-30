module Cyphers

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
end 