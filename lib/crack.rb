requ

class Crack

  def initialize
    @offset = 
     
  end

  def get_secret
    File.read("./lib/secret_message.txt")
  end
  
  def char_map
    char_map = Charactermap.new.character_map
  end

  def transformer
    active_input = []
    input = get_secret.chars
    known = "..end.."
    holder = input[-8..-1]
    diff = []
    until holder.empty?
      active_input = holder.shift(4)
      active_input.each do |char|
        diff << (char_map["."] - char_map[char]).abs
      end  
    end
    diff    
  end  
end