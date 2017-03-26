require 'pry'

class Key

  attr_reader :digits
  
  def initialize(digits)
    @digits = digits
  end

  def key_a
    new = digits.to_s.each_char.to_a
    a = new[0] + new[1]
    a = a.to_i
  end
  
  def key_b
    new = digits.to_s.each_char.to_a
    b = new[1] + new[2]
    b = a.to_i
  end

  def key_c
    new = digits.to_s.each_char.to_a
    c = new[2] + new[3]
    c = a.to_i
  end

  def key_d
    new = digits.to_s.each_char.to_a
    d = new[3] + new[4]
    d = a.to_i
  end


end

# key = Key.new(81625)
# binding.pry
# ""