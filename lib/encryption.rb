require './lib/offset'
require './lib/key'
require './lib/character_map'
require './lib/cypher_module'
require 'pry'

class Encryption
  include Cyphers

  def initialize
    @new_key = Key.new
    @new_offset = Offset.new
    @read_file = ARGV[0] 
    @write_file = ARGV[1] 
    secret_writer
  end

 

  def get_message
    File.read("./lib/" + @read_file)
  end

  def encrypter
    input = get_message.chars
    active_input = []
    secret_word  = ""
    until input.empty?
      active_input = input.shift(4)
      active_input.each_with_index do |char, i|
        secret_word << rotate_chars('encrypt', char, i)
      end
    end
    secret_word
  end

  def secret_writer
    new_file = File.open("./lib/" + @write_file, "w")
    new_file.write(encrypter)
  end
    
end

e = Encryption.new
