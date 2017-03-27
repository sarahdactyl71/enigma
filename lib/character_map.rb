require './lib/key'
require './lib/offset'

class Charactermap
  
  def initialize
  end

  def character_map
   (?a..?z).to_a + (0..9).to_a + [" ", ",", "."]
  end

end