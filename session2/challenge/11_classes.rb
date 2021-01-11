# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  NUMERALS = {
    90 => 'Ninety-', 80 => 'Eighty-', 70 => 'Seventy-', 60 => 'Sixty-', 50 => 'Fifty-',
    40 => 'Forty-', 30 => 'Thirty-', 20 => 'Twenty-', 19 => 'Nineteen', 18 => 'Eighteen',
    17 => 'Seventeen', 16 => 'Sixteen', 15 => 'Fifteen', 14 => 'Fourteen', 13 => 'Thirteen',
    12 => 'Twelve', 11 => 'Eleven', 10 => 'Ten', 9 => 'Nine', 8 => 'Eight', 7 => 'Seven',
    6 => 'Six', 5 => 'Five', 4 => 'Four', 3 => 'Three', 2 => "Two", 1 => 'One'
  }

  def initialize(num)
    @num = num
  end

  def numeral_converter(n)
    x = n
    numeral = ''
    NUMERALS.each { |k, v| (x / k).times { numeral << v; x -= k } }
    n > 10 && (n % 10 == 0) ? numeral.chop : numeral.capitalize
  end

  def print_song
    @num > 99 ? bottles = 99 : @num.negative? ? bottles = 0 : bottles = @num
    if bottles > 2
      until bottles == 2
        puts "#{numeral_converter(bottles)} bottles of beer on the wall,\n#{numeral_converter(bottles)} bottles of beer,\nTake one down, pass it around,\n#{numeral_converter(bottles -= 1)} bottles of beer on the wall."
      end
    end
    if bottles == 2
      puts "#{numeral_converter(bottles)} bottles of beer on the wall,\n#{numeral_converter(bottles)} bottles of beer,\nTake one down, pass it around,\n#{numeral_converter(bottles -= 1)} bottle of beer on the wall."
    end
    if bottles == 1
      puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall."
    end
  end
end
