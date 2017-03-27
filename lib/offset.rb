require 'date'
require 'pry'

class Offset
  attr_reader :date
  def initialize
    @date = Date.today.strftime('%d%m%Y').to_i ** 2
  end 

  def last_four_digits
    @date.to_s[-4..-1].to_i
  end  

end

#binding.pry
""