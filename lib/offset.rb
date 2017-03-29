require 'date'
require 'pry'

class Offset
  attr_reader :date 
  def initialize(date=677665909088289) #Date.today.strftime('%d%m%y').to_i ** 2
        @date = date #initial tests were '260317' --> revert back to 6 dig date format
  end 

  def last_four_digits
    last_four = @date.to_s[-4..-1].to_i
    last_four
  end  

  def off_a
    a = last_four_digits.to_s.each_char.to_a[0].to_i
  end

  def off_b
    b = last_four_digits.to_s.each_char.to_a[1].to_i
  end

  def off_c
    c = last_four_digits.to_s.each_char.to_a[2].to_i
  end

  def off_d
    d = last_four_digits.to_s.each_char.to_a[3].to_i
  end

end
# offset = Offset.new
# binding.pry
# ""

