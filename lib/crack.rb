require 'pry'
require './lib/cypher_module'
require './lib/character_map'

class Crack


  def get_secret
    File.read("./lib/secret_message.txt")
  end
  
  def char_map
    Charactermap.new.character_map
  end

  def switch
    get_secret.length % 4
  end

  def transformer
    input = get_secret.chars[-(4+switch)..-(1+switch)]
  end  

  def find_end
    known = "..end..".chars
    wanted = known[-(4+switch)..-(1+switch)]
  end

  def crack_rotation_a
    crack_rotation_a = char_map.index(find_end[0]) - char_map.index(transformer[0])
  end

  def crack_rotation_b
    crack_rotation_b = char_map.index(find_end[1]) - char_map.index(transformer[1])
  end
  
  def crack_rotation_c  
    crack_rotation_c = char_map.index(find_end[2]) - char_map.index(transformer[2])
  end
  
  def crack_rotation_d 
    crack_rotation_d = char_map.index(find_end[3]) - char_map.index(transformer[3])
  end

  def crack_chars(char, index)
    return char_map.rotate(crack_rotation_a)[char_map.index(char)] if index == 0
    return char_map.rotate(crack_rotation_b)[char_map.index(char)] if index == 1
    return char_map.rotate(crack_rotation_c)[char_map.index(char)] if index == 2
    return char_map.rotate(crack_rotation_d)[char_map.index(char)] if index == 3
  end

  def cracker
    input = get_secret.chars
    active_input = []
    decrypted_message  = ""
    until input.empty?
      active_input = input.shift(4)
      active_input.each_with_index do |char, i|
        decrypted_message << crack_chars(char, i)
      end
    end
    decrypted_message
  end 

end