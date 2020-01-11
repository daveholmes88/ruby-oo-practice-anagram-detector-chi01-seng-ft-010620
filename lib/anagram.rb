require "pry"
class Anagram
    attr_accessor :setter, :getter

    def initialize(setter)
        @setter = setter
    end 

    def match(getter)
        setter_letters=setter.split('')
        setter_letters.sort!
        i = 0
        a = []
        while i < getter.length
            i_array = []
            i_array << getter[i]
            join = i_array.join('').split('').sort
            if join == setter_letters
            a << getter[i]
            end 
            i += 1
        end 
        a
    end 

end 