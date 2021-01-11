# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  letters = []
  string.chars.each_with_index { |c, i| letters << string[i + 1] if c == 'r' || c == 'R' }
  letters.join
end

# p pirates_say_arrrrrrrrr('Pirates say arrrrrrrrr')
