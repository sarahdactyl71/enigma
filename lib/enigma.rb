require './lib/key'
require './lib/offset'

class Enigma
  
  def initialize

  end

  def character_map
   (?a..?z).to_a + (0..9).to_a + [" ", ",", "."]
  end

  def rotation
    #calculates rotation of element
  end

  def encrypt(message)
    #takes string of message and writes to .txt file based on rotations
  end 

end