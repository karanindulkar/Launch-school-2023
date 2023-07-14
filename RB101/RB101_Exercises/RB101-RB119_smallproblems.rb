#Repeat Yourself Program

def repeat(string, number)
  number.times {puts string}
end 

repeat("Hello", 3)

#Detect Odd Program

def is_odd?(number)
  if number % 2 == 0
    false
  else 
    true
  end
end 

puts is_odd?(2)    
puts is_odd?(5)    
puts is_odd?(-17)  
puts is_odd?(-8)   
puts is_odd?(0)    
puts is_odd?(7)

#Stringy String Program

def stringy(int)
  Array.new(int) { |index| index.even? ? 1 : 0}.join
end 

puts stringy(6) 
puts stringy(9) 
puts stringy(4) 
puts stringy(7) 

#Whats my Bonus?

def calculate_bonus(integer, boolean_value)
  if boolean_value == true
    bonus = integer / 2
  else 
    bonus = 0
  end
end 

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)

#Bannerizer

def print_in_box(string)
  top_bottom_line = "+-" + ("-" * string.size) + "-+"
  middle_lines = "|" + (" " * (string.size + 2)) + "|"
  text_line = "|" + " " + ("#{string}") + " " + "|"
  
  puts top_bottom_line
  puts middle_lines
  puts text_line
  puts middle_lines
  puts top_bottom_line
end 
print_in_box('Hello there')

print_in_box('To boldly go where no one has gone before.')

print_in_box('')

#Right Triangles

def triangle(number)
  number.times do |n|
    puts " " * (number - 1) + "*" * (n + 1)
    number = number - 1
    n = n + 1 
  end 
  
end

triangle(5)
triangle(9)

#Madlibs

=begin
noun = ' '
verb = ' '
adjective = ' '
adverb = ' '

Kernel.puts("Enter a noun:")
noun = Kernel.gets().chomp() 

Kernel.puts("Enter a verb:")
verb = Kernel.gets().chomp()

Kernel.puts("Enter an adjective:")
adjective = Kernel.gets().chomp()

Kernel.puts("Enter an adverb:")
adverb = Kernel.gets().chomp()

Kernel.puts("Do you #{verb} your #{adjective} #{noun} #{adverb}? No way, that is hilarious!")
=end

#Reverse the Digits

def reversed_number(number)
  number.to_s.reverse.to_i
end 

p reversed_number(12345) 
p reversed_number(12213) 
p reversed_number(456) 
p reversed_number(12000) 
p reversed_number(12003) 
p reversed_number(1) 

#Get middle character

def center_of(message)
  middle_index = message.size / 2
  if message.length % 2 == 0
    message[middle_index - 1] + message[middle_index]  
  else 
    message[middle_index]
  end 
end

p center_of('I love ruby') 
p center_of('Launch School') 
p center_of('Launch') 
p center_of('Launchschool') 
p center_of('x') 

#How old is teddy?

teddy_random_age = rand(20..200)

puts "Teddy is #{teddy_random_age} years old!"

#How big is the room?

=begin
length = ' '
width = ' '

Kernel.puts("Enter the length of the room in meters:")
length = Kernel.gets().chomp()

Kernel.puts("Enter the width of the room in meters:")
width = Kernel.gets().chomp()

area_meter = (length.to_i * width.to_i).to_f
area_feet = (area_meter * 10.7639)

Kernel.puts("The area of the room is #{area_meter} square meters (#{area_feet} square feet)")
=end

#Tip Calculator

=begin
bill = ' '
tip_percentage = ' '
Kernel.print("What is the bill? ")
bill = Kernel.gets().chomp()
Kernel.print("What is the tip percentage? ")
tip_percentage = Kernel.gets().chomp()


tip = bill.to_f * (tip_percentage.to_i / 100.0)
total = bill.to_f + tip.to_f 

Kernel.puts("The tip is $#{tip}")
Kernel.puts("The total is $#{total}")
=end

#When will I retire?

=begin
YEAR = 2023
age = ' '
retire_age = ' '

Kernel.print("What is your age? ")
age = Kernel.gets().chomp()
Kernel.print("At what age would you like to retire? ")
retire_age = Kernel.gets().chomp()

retire_year = (retire_age.to_i - age.to_i) + YEAR
work_years_left = retire_year - YEAR

Kernel.puts("Its #{YEAR}. You will retire in #{retire_year}.")
Kernel.puts("You have only #{work_years_left} years of work to go!")
=end

#Greeting a user

=begin
name = ' '
Kernel.print("What is your name? ")
name = Kernel.gets().chomp()

  if name.include?('!')
    name.delete!('!')
    name.upcase!
    puts "HELLO #{name}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end 
=end

#Odd Numbers

(1..99).each do |num|
  if num % 2 == 1
    puts num
  end
end 

#Even Numbers

(1..99).each do |num|
  if num % 2 == 0
    puts num
  end 
end 

#Sum or Product of Consecutive Integers

=begin
integer = ' '
answer = ' '
sum = 0
product = 1 

Kernel.puts(">> Please enter an integer greater than 0:")
integer = Kernel.gets().chomp()
Kernel.puts(">> Enter 's' to compute the sum, 'p' to compute the product.")
answer = Kernel.gets().chomp()

if answer == 's'
  (1..integer.to_i).each do |num|
    sum += num
  end
  Kernel.puts("The sum of the integers between 1 and #{integer} is #{sum}.")
elsif answer == 'p'
  (1..integer.to_i).each do |num|
    product *= num
  end 
  Kernel.puts("The product of the integers between 1 and #{integer} is #{product}.")
  
else 
  Kernel.puts("Sorry you didnt pick 's' or 'p'.")
end 
=end 

#Always Return Negative

=begin

def negative(number)
  if number > 0
    number *= -1
  elsif number < 0
    number 
  else 
    number = 0
  end 
end

p negative(5) 
p negative(-3) 
p negative(0) 

#Searching 101

first_number = 0
second_number = 0
third_number = 0
fourth_number = 0
fifth_number = 0
last_number = 0
numbers = []


Kernel.puts("==> Enter the 1st number:")
first_number = Kernel.gets().chomp()
numbers << first_number.to_i
Kernel.puts("==> Enter the 2nd number:")
second_number = Kernel.gets().chomp()
numbers << second_number.to_i
Kernel.puts("==> Enter the 3rd number:")
third_number = Kernel.gets().chomp()
numbers << third_number.to_i
Kernel.puts("==> Enter the 4th number:")
fourth_number = Kernel.gets().chomp()
numbers << fourth_number.to_i
Kernel.puts("==> Enter the 5th number:")
fifth_number = Kernel.gets().chomp()
numbers << fifth_number.to_i
Kernel.puts("==> Enter the last number:")
last_number = Kernel.gets().chomp()


if numbers.include?(last_number.to_i)
  Kernel.puts("The number #{last_number} appears in #{numbers}.")
else 
  Kernel.puts("The number #{last_number} does not appear in #{numbers}.")
end 
=end

#Arithmetic Integer

=begin
Kernel.puts("==> Enter the first number:")
first_number = Kernel.gets().chomp().to_i 
Kernel.puts("==> Enter the second number:")
second_number = Kernel.gets().chomp().to_i 

Kernel.puts("==> #{first_number} + #{second_number} = #{first_number + second_number}")
Kernel.puts("==> #{first_number} - #{second_number} = #{first_number - second_number}")
Kernel.puts("==> #{first_number} * #{second_number} = #{first_number * second_number}")
Kernel.puts("==> #{first_number} / #{second_number} = #{first_number / second_number}")
Kernel.puts("==> #{first_number} % #{second_number} = #{first_number % second_number}")
Kernel.puts("==> #{first_number} ** #{second_number} = #{first_number ** second_number}")
=end

#Counting the Number of Characters
=begin
Kernel.print("Please write word or multiple words: ")
word = Kernel.gets().chomp()
number_of_characters = word.delete(' ').length

Kernel.puts("There are #{number_of_characters} characters in #{word}.")
=end

#Multiplying Two Numbers

def multiply(number1, number2)
  number1.to_i * number2.to_i
end 

p multiply(5, 3) 

#Squaring an Argument

def square(number)
  number * number
end 

p square(5)
p square(-8)

#Exclusive Or
=begin
def xor?(number1, number2)
  return true if number1 && !number2
  return true if number2 && !number1
  false
end 

p xor?(5.even?, 4.even?) 
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 
=end

#Palindromic Strings

def palindrome?(string)
  if string == string.reverse
    true
  else
    false
  end
end 

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')

#Palindromic Strings(Part 2)

def real_palindrome?(string)
  string = string.downcase
  string = string.gsub(/[^0-9a-z]/i,'')
  palindrome?(string)
end 

p real_palindrome?('madam') 
p real_palindrome?('Madam') 
p real_palindrome?("Madam, I'm Adam") 
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') 

#Palindromic Numbers

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) 
p palindromic_number?(123210) 
p palindromic_number?(22) 
p palindromic_number?(5) 

#Uppercase Check

def uppercase?(string)
  if string == string.upcase
    true
  else
    false
  end 
end 

p uppercase?('t') 
p uppercase?('T') 
p uppercase?('Four Score') 
p uppercase?('FOUR SCORE') 
p uppercase?('4SCORE!') 
p uppercase?('') 

#Short Long Short

def short_long_short(string_one, string_two)
  if string_one.length > string_two.length
    string_two + string_one + string_two
  else
    string_one + string_two + string_one
  end
end

p short_long_short('abc', 'defgh') 
p short_long_short('abcde', 'fgh') 
p short_long_short('', 'xyz') 

#Leap Years(Part 1 & Part 2)

def leap_year?(year)
  if year > 1752
    if year % 4 == 0  
      if (year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
        true
      else
        false
      end
    else
      false
    end
  else 
    if year % 4 == 0
      true
    else false
  end
  end
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(240000)
p leap_year?(240001)
p leap_year?(2000)
p leap_year?(1900)
p leap_year?(1752)
p leap_year?(1700)
p leap_year?(1) 
p leap_year?(100) 
p leap_year?(400) 

#Multiples of 3 and 5

def multisum(number)
  sum = 0
  1.upto(number).each do |num|
    if num % 3 == 0 || num % 5 == 0
      sum = sum + num
    end
  end 
  sum 
end 

p multisum(3) 
p multisum(5)
p multisum(10)
p multisum(1000)

#Running Totals

def running_total(array)
  sum = 0
  array.map do |value|
    sum = sum + value
  end
end 

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

#Convert a String to a Number!

DIGITS = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
          "6" => 6, "7" => 7, "8" => 8, "9" => 9 
}
        

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each do |digit|
    value = 10 * value + digit
  end 
  value
end

p string_to_integer('4321')
p string_to_integer('570')

#Convert a String to Signed Number!


def string_to_signed_integer(string)
  
  digits = string.chars.map { |char| char }
  
  if digits.include?("-")
    digits.delete("-")
    digits = digits.map { |char| DIGITS[char] }
    value = 0
    digits.each do |digit|
      value = (10 * value + digit) 
    end
    value = -1 * value
  elsif digits.include?("+")
    digits.delete("+")
    digits = digits.map { |char| DIGITS[char] }
    value = 0
    digits.each do |digit|
      value = (10 * value + digit) 
    end
    value
  else
    digits = digits.map { |char| DIGITS[char] }
    value = 0
    digits.each do |digit|
      value = (10 * value + digit) 
    end
    value
  end
  
end 

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')

#Convert a Number to a String!

CHARACTERS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
               5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }
               
def integer_to_string(number)
  numbers = number.digits.reverse
  numbers = numbers.map { |num| CHARACTERS[num] }.join
  
  numbers
end 

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)

#Convert a Signed Number to a String!

def signed_number_to_string(number)
  if number < 0
    number = number * -1
    numbers = number.digits.reverse
    numbers = numbers.map { |num| CHARACTERS[num] }
    numbers = numbers.unshift("-").join
    numbers
  elsif number > 0
    numbers = number.digits.reverse
    numbers = numbers.map { |num| CHARACTERS[num] }
    numbers = numbers.unshift("+").join
    numbers
  else 
    numbers = number.digits.join
    numbers
  end
end 

p signed_number_to_string(4321)
p signed_number_to_string(-123)
p signed_number_to_string(0)

#ASCII String Value

def ascii_value(string)
  number = string.sum 
  number
end 

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')

#After Midnight(Part 1)


def time_of_day(minute)
  
  hours = (minute / 60) % 24
  minutes = minute % 60
  
  "#{"%02d"%hours}:#{"%02d"%minutes}" 
end

p time_of_day(0) 
p time_of_day(-3) 
p time_of_day(35) 
p time_of_day(-1437) 
p time_of_day(3000) 
p time_of_day(800) 
p time_of_day(-4231)

#After Midnight(Part 2)

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time_string)
  hours, minutes = time_string.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end 

def before_midnight(time_string)
  minutes = MINUTES_PER_DAY - after_midnight(time_string)
  minutes = 0 if minutes == MINUTES_PER_DAY
  minutes
end

p after_midnight('00:00') 
p before_midnight('00:00') 
p after_midnight('12:34') 
p before_midnight('12:34') 
p after_midnight('24:00') 
p before_midnight('24:00')

#Letter Swap 

def swap(string)
  if string.length() < 2
    string
  else 
    swap = string.split.map do |word|
      word[0] ,word[-1] = word[-1] ,word[0]
      word
    end
    swap.join(' ')
  end
end 

p swap('Oh what a wonderful day it is')
p swap('a')

#Clean up the words

def cleanup(string)
  string = string.gsub(/[^a-z ]/i, ' ').squeeze(" ")
  string
end 

p cleanup("---what's my +*& line?")

#Letter Counter(Part 1)

def word_sizes(words)
  count = words.split.map do |word|
    characters = word.length()
    characters
  end
  
  word_count = { }
  count.each do |i|
    if word_count[i]  
     word_count[i] += 1
    else 
      word_count[i] = 1
    end
  end 
  word_count
end 

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

#Letter Counter(Part 2)

def word_sizes(words)
  count = words.split.map do |word|
    clean_words = word.delete('^A-Za-z')
    characters = clean_words.length()
    characters
  end
  
  word_count = { }
  count.each do |i|
    if word_count[i]  
     word_count[i] += 1
    else 
      word_count[i] = 1
    end
  end 
  word_count
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

#Alphabetical Numbers

ALPHABET_NUMBERS = %w(zero one two three four five six seven eight nine ten 
eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |num| ALPHABET_NUMBERS[num] }
end 

p alphabetic_number_sort((0..19).to_a)

#ddaaiillyy ddoouubbllee

def crunch(string)
 index = 0
 new_string = ''
 
 while index <= string.length - 1
    new_string << string[index] unless string[index] == string[index + 1]
    index = index + 1
 end
  new_string
end 

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')

#List of Digits

def digit_list(numbers)
  numbers = numbers.digits.reverse
  numbers.inspect 
end 

puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)

#Cute Angles

DEGREE = "\xC2\xB0"
MINUTE = 60
SECONDS = 60

def dms(number)
  
  degrees = number.to_i
  
  real_minutes = ((number - degrees) * MINUTE)
  minutes = real_minutes.to_i
  real_seconds = ((real_minutes - minutes) * SECONDS)
  seconds = real_seconds.to_i
  
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end 

p dms(30) 
p dms(76.73) 
p dms(254.6) 
p dms(93.034773) 
p dms(0) 
p dms(360)

#Delete Vowels

def remove_vowels(array_string)
  array_string = array_string.map do |string|
    string = string.delete("a,A,e,E,i,I,o,O,u,U")
  end 
  array_string
end 

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))

#Fibonacci Number Location By Length

def find_fibonacci_index_by_length(number)
  first_number = 1
  second_number = 1
  index = 2
  
  loop do
    index += 1
    sum = first_number + second_number
    break if number == sum.to_s.size
    
    first_number = second_number
    second_number = sum
    
  end
  index
  
end

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3) 
p find_fibonacci_index_by_length(10) 
p find_fibonacci_index_by_length(100) 
p find_fibonacci_index_by_length(1000) 
#p find_fibonacci_index_by_length(10000)

#Reversed Array (Part 1)

def reverse!(array)
  #array.sort! {|a,b| b <=> a} 
    
  start_index = 0 
  end_index = -1
  
  while start_index < array.size / 2
    array[start_index], array[end_index] = array[end_index], array[start_index]
    start_index = start_index + 1
    end_index = end_index - 1
  end 
  
  array 
end

list = [1,2,3,4]
result = reverse!(list)
p result


list = %w(a b e d c)
reverse!(list) 
p list 

list = ['abc']
reverse!(list) 
p list 

#Reversed Array (Part 2)

def reverse(array)
  new_array = []
  array.reverse_each {|index| new_array << index } 
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          
p reverse(%w(a b e d c)) == %w(c d e b a)  
p reverse(['abc']) == ['abc']              
p reverse([]) == []

p list = [1, 3, 2]                      
p new_list = reverse(list)             
p list.object_id != new_list.object_id  
p list == [1, 3, 2]                     
p new_list == [2, 3, 1]
p list.object_id
p new_list.object_id  

#Combining Array

def merge(array1, array2)
  result_array = array1.concat(array2)
  result_array.uniq
end

p merge([1, 3, 5], [3, 6, 9])

#Halvsies

def halvsies(array)
  #empty_array = []
  if array.size > 1
    array.each_slice((array.size/2.0).round).to_a
  else
    [array, []] 
  end
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])

#Find the Duplicate

def find_dup(array)
  array.find{ |num| array.count(num) == 2}
end 

p find_dup([1, 5, 3, 1])
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])
          
#Does My List Include This?

def include?(array, value)
  if array.one? { |num| num == value }
    true
  else
    false
  end
end 

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)

#Combine Two Lists

def interleave(array1, array2)
  result_array = array1.zip(array2).flatten
  result_array 
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

#Lettercase Counter

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a
def letter_case_count(string)
case_count = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.chars.each do |value|
    if UPPERCASE.include?(value) 
      case_count[:uppercase] += 1
    elsif LOWERCASE.include?(value)
      case_count[:lowercase] += 1
    else
      case_count[:neither] += 1
    end
  end 
  case_count
end 

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')

#Capitalize Words

def word_cap(string)
  string = string.split.map do |value|
    value.capitalize
  end
  string.join(' ')
end 

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')

#Swap Case

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a
def swapcase(string)
  swapcase_string = string.chars.each do |value|
    if UPPERCASE.include?(value)
      value.downcase!
    elsif LOWERCASE.include?(value)
      value.upcase!
    else
      value 
    end
  end 
  swapcase_string.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')

#Staggered Case(Part1)

def staggered_case(string)
  string.chars.map.with_index { |char, index| index.even? ? char.capitalize : char.downcase }.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')

#Multiplicative Average

def show_multiplicative_average(array)
  multiply = 1
  array.map.each do |integer|
    multiply = multiply * integer.to_f
  end
   
  result = multiply / array.size
  result
end 

p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])

#Multiply Lists 

def multiply_list(array1, array2)
  index = 0
  new_array = []
  array1.map do |integer|
    new_array << (integer * array2[index])
    index += 1
  end 
  new_array 
end

p multiply_list([3, 5, 7], [9, 10, 11])

#Multiply All Pairs

def multiply_pair(array)
  multiply = 1
  array.map.each do |integer|
    multiply = multiply * integer
  end
  multiply
end 

def multiply_all_pairs(array1, array2)
  new_array = array1.product(array2)
  new_array = new_array.map.each do |array|
    multiply_pair(array)
  end
  new_array.sort
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

#The End Is Near But Not Here

def penultimate(string)
  array = []
  string.split.map do |word|
    array << word
  end 
  array[array.size - 2]
end 

p penultimate('last word')
p penultimate('Launch School is great!')

#How many

def count_occurrences(car_names)
  occurrences = {}
  
  car_names.uniq.each do |name|
    occurrences[name] = car_names.count(name)
  end 
  
  occurrences.each do |name, count|
    puts "#{name} => #{count}"
  end
  
end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

#Sum of Sums 

def sum_of_sums(array)
  sum = 0
  sum_of_sum = 0
  array.each do |num|
    sum = sum + num 
    sum_of_sum = sum_of_sum + sum
  end
  sum_of_sum
end 

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])

#Leading Substrings

def leading_substrings(string)
  array = []
  letter = ''
  string.chars.each do |char|
    letter = letter + char.to_s
    array << letter
  end
  array
end 

p leading_substrings('abc')
p leading_substrings('xyzzy')

#All substrings

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde')

#Palindromic Subtrings

def palindromes(string)
  array = []
  results = []
  palindrome_string = substrings(string)
  palindrome_string.each do |word|
    if (word.size > 1) && (word == word.reverse)
      results << word
    else
      array 
    end
  end
  results
end 

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes') 

#fizzbuz

def fizzbuzz(number1, number2)
  results = []
  (number1..number2).each do |num|
    results << fizzvalue(num)
  end
  results.join(", ")
end 

def fizzvalue(num)
  if (num % 3 == 0) && (num % 5 == 0)
      "FizzBuzz"
    elsif (num % 3 == 0) && (num % 5 != 0)
      "Fizz"
    elsif (num % 5 == 0) && (num % 3 != 0)
      "Buzz"
    else
      num
    end
end 

p fizzbuzz(1, 15)

#Double Char (Part1)

def repeater(string)
  result = []
  string.chars.each do |letter|
    result << letter * 2
  end 
  result.join
end

p repeater('Hello')
p repeater("Good job!")
p repeater('')

#Double Char (Part2)

def double_consonants(string)
  result = []
  exception = %w(b c d f g h j k l m n p q r s t v w x y z)
  string.chars.each do |letter|
    if exception.include?(letter.downcase) 
      result << letter * 2
    else
      result << letter 
    end
  end 
  result.join
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')

#Reverse It (Part1)

def reverse_sentence(string)
  result = string.split.reverse.join(' ')
end 

p reverse_sentence('Hello World')
p reverse_sentence('Reverse these words')
p reverse_sentence('')
p reverse_sentence('    ')

#Reverse It (Part2)

def reverse_words(string)
  result = []
  string.split.each do |word|
    if word.size >= 5
      result << word.reverse
    else 
      result << word
    end
  end
  result.join(' ')
end 

p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')

#Array Average

def average(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum / array.size
end 

p average([1, 6])
p average([1, 5, 87, 45, 8, 8])
p average([9, 47, 23, 95, 16, 52])

#Welcome Stranger

def greetings(array, hash) 
  name = array.join(' ')
  puts "=> Hello, #{name}! Nice to have a #{hash.values.join(' ')} around." 
end 

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

#Double Doubles

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = string_number[0..center - 1]
  right_side = string_number[center..-1]

  if left_side == right_side  
    number 
  elsif center == 0
    number * 2
  else number * 2
  end

end 

p twice(37) 
p twice(44) 
p twice(334433) 
p twice(444) 
p twice(107) 
p twice(103103) 
p twice(3333) 
p twice(7676) 
p twice(123_456_789_123_456_789) 
p twice(5)

#Counting Up

def sequence(number)
  number_array = []
  (1..number).each do |num|
    number_array << num
  end
  number_array
end 

p sequence(5)
p sequence(3)
p sequence(1)

#How long are you?

def word_lengths(string)
  array = []
  string.split.map do |word|
    array << word + ' ' + word.length.to_s
  end
  array
end 

p word_lengths("cow sheep chicken")
p word_lengths("baseball hot dogs and apple pie")
p word_lengths("It ain't easy, is it?")
p word_lengths("Supercalifragilisticexpialidocious")
p word_lengths("")

#Name Swapping

def swap_name(name)
  array_name = []
  name.split.map do |word|
    array_name << word
  end 
  array_name.reverse.join(', ')
end 

p swap_name('Joe Roberts')

#Sequence Count

def sequence(count, first_number)
  array = []
  constant = first_number
  count.times do |num|
    num = first_number
    array << num
    first_number += constant
  end 
  array
end 

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)

#Grade book

def get_grade(grade_1, grade_2, grade_3)
  
  average = (grade_1 + grade_2 + grade_3) / 3
  
  case average
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else 
    'F'
  end
end 

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)

#Grocery List

def buy_fruit(array)
  array = array.map do |fruit, quantity|
    [fruit] * quantity
  end 
  array.flatten
end 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

#Group Anagrams

def anagram(array)
  word_hash = {}
  array.map do |word|
    key = word.chars.sort.join('')
    if word_hash.has_key?(key)
      word_hash[key].push(word)
    else
      word_hash[key] = [word]
    end 
  end
  
  word_hash.each_value do |v|
    p v
  end
end 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
anagram(words)

#Sum of Digits

def sum(number)
  string_number = number.to_s
  sum = 0
  string_number.chars.each do |num|
    sum = sum + num.to_i
  end 
  sum
end 

puts sum(23)
puts sum(496)
puts sum(123_456_789)

#Odd Lists

def oddities(array) 
  index = 0
  new_array = []
  array.map do |value|
      if array[index] == nil
        array.delete_at(index)
      else
        new_array << array[index]
      end
      index += 2
  end
  new_array
end 

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
p oddities([1, 2, 3, 4, 1])

#Rotation (Part1)

def rotate_array(array)
=begin
  value = array.first
  array.delete_at(0)
  new_array = []
  array.map do |num|
    new_array << num
  end
  new_array << value
=end
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array(['a', 'b', 'c'])
p rotate_array(['a'])

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]

#Rotation (Part2)

def rotate_rightmost_digits(number, count)
  string_number = number.to_s.chars
  string_number[-count..-1] = rotate_array(string_number[-count..-1])
  string_number.join.to_i
    
end

p rotate_rightmost_digits(735291, 1) 
p rotate_rightmost_digits(735291, 2) 
p rotate_rightmost_digits(735291, 3) 
p rotate_rightmost_digits(735291, 4) 
p rotate_rightmost_digits(735291, 5) 
p rotate_rightmost_digits(735291, 6)

#Rotation (Part3)

def max_rotation(number)
  count = number.to_s.length
  while count > 1
    number = rotate_rightmost_digits(number,count)
    count -= 1
  end
  number
end 

p max_rotation(735291)
p max_rotation(3)
p max_rotation(35)
p max_rotation(105)
p max_rotation(8_703_529_146)

#Diamonds

def rows(number, spaces)
  number_of_stars = number - (2 * spaces)
  stars = '*' * number_of_stars
  puts stars.center(number)
end

def diamond(number)
  max_distance = (number - 1) / 2
  max_distance.downto(0) { |distance| rows(number, distance) }
  1.upto(max_distance) { |distance| rows(number, distance) }
end 

diamond(1)
diamond(3)
diamond(9)

#Stack Machine Interpolation

def minilang(command)
  register = 0
  stack = []
  command.split.each do |command|
    case command
    when 'PUSH' then stack << register
    when 'ADD' then register = register + stack.pop
    when 'SUB' then register = register - stack.pop
    when 'MULT' then register = register * stack.pop
    when 'DIV' then register = register / stack.pop
    when 'MOD' then register = register % stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else register = command.to_i
    end
  end
end 

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

#Word to Digit

def word_to_digit(string)

numbers = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

  numbers.each do |name, number| 
    string.gsub!(name, number) 
  end
  string
  
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')

#Fibonacci Numbers (Recursion)

def fibonacci(num)
  return 1 if num == 1 || num == 2
  
  fibonacci(num - 1) + fibonacci(num - 2)
end 

p fibonacci(1) 
p fibonacci(2) 
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(12)
p fibonacci(20)

#Fibonacci Numbers (Procedural)

def fibonacci(number)
  limit = number - 1
  first_num = 0
  second_num = 1
  total = 0
  limit.times do 
    total = first_num + second_num
    first_num = second_num
    second_num = total
  end
  total 
end 

p fibonacci(20)
p fibonacci(100)
#p fibonacci(100_001)

#Fibonacci Numbers (Last Digit)

def fibonacci_last(number)
  limit = number - 1
  first_num = 0
  second_num = 1
  total = 0
  limit.times do 
    total = first_num + second_num
    first_num = second_num
    second_num = total
  end
  total = total.to_s.chars
  total.last.to_i
end 

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)
p fibonacci_last(100_001)
#p fibonacci_last(1_000_007)
#p fibonacci_last(123456789)

#Longest Sentence

text = File.read('sample_text')
sentences = text.split(/\.|\?|!/)

largest_sentence = sentences.max_by { |sentence| sentence.length }
puts largest_sentence.strip
puts "#{largest_sentence.split.size} words"

#Now I Know My ABC's 

def block_word?(string) 
  spelling_blocks = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze
  
  string = string.upcase
  spelling_blocks.none? { |block| string.count(block) >= 2 }
end 

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
p block_word?('hello')

#Lettercase Percentage Ratio

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a
def letter_percentages(string)
  length = string.length
  char_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.chars.each do |value|
    if UPPERCASE.include?(value)
      char_hash[:uppercase] += ((1 / length.to_f) * 100)
    elsif LOWERCASE.include?(value)
      char_hash[:lowercase] += ((1 / length.to_f) * 100)
    else
      char_hash[:neither] += ((1 / length.to_f) * 100)
    end
  end 
  char_hash
end 

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')

#Matching Parentheses?

def balanced?(string)
  parentheses = 0
  string.chars.each do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    break if parentheses < 0
  end 
  parentheses.zero?
end 

p balanced?('What (is) this?')
p balanced?('What is) this?')
p balanced?('What (is this?')
p balanced?('((What) (is this))?')
p balanced?('((What)) (is this))?')
p balanced?('Hey!')
p balanced?(')Hey!(')
p balanced?('What ((is))) up(')
p balanced?('What ())(is() up')

#Triangle Sides

def triangle(num1, num2, num3)
  if num1 == num2 && num1 == num3 
    :equilateral 
  elsif num1 == num2 && num1 != num3
    :isosceles
  elsif num1 != num2 && num1 != num3 && num2 != num3
    :scalene
  else
    :invalid
  end
end 

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)

#Tri-Angles

def triangle(num1, num2, num3)
  array =[]
  array << num1 << num2 << num3
  if array.count(90) == 1
    :right
  elsif (num1 < 90 && num2 < 90 && num3 < 90) && (num1 + num2 + num3 == 180)
    :acute
  elsif (num1 + num2 + num3 != 180) || array.count(90) > 1
    :invalid
  else
    :obtuse
  end
end 

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10)
p triangle(0, 90, 90) 
p triangle(50, 50, 50)

#Lucky Days
require 'date' 

def friday_13th(year)
  month = 1
  count = 0
  (1..12).each do 
    if Date.new(year, month, 13).friday? == true
      count += 1
    end
    month += 1
  end 
  count 
end 

p friday_13th(2015)
p friday_13th(1986)
p friday_13th(2019)

#Next Featured Number Higher than Given Value

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0 
  
  loop do 
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
  end 
end 

p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
#p featured(999_999_987)

#Bubble Sort

def bubble_sort!(array)
  index = 0
  count = array.size
    while index < count - 1 do 
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        index = 0 
      else 
        index += 1
      end
    end
  array
end 

array = [5, 3]
p bubble_sort!(array)

array = [6, 2, 7, 1, 4]
p bubble_sort!(array) 

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)

#Sum Square-Sum Square

def sum_square_difference(num)
  sum = 0
  square = 0
  (1..num).each do |num| 
    sum += num
    square = square + (num * num)
  end 
  return sum**2 - square 
end 

p sum_square_difference(3)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)

#DEBUGGING Countdown ----------------------------------------------------------

# We reassign the variable counter to the return value of decrease(counter).
# Before the change, Tthe counter parameter of the decrease method lives only 
# within the scope of the method and so the counter variable outside the method 
#references the Integer 10

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

#DEBUGGING HEY YOU! -----------------------------------------------------------

# String#chars method returns an array of the characters in the string, but 
# those characters are new String objects and so those are the ones we are 
# mutating. To fix this we must use the upcase! on name directly

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

#DEBUGGING Valid Series? -------------------------------------------------------

# The orignal code performed assignment "=" on line 1897. Due to assignment to 
# value 3 the return value will always be evaluated to truthy resulting in true. 
# To fix this error we must change line 1897 to comparison '=='.

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

#DEBUGGING Reverse Sentence ----------------------------------------------------

# The orignal code tries to concatenate an Array and a String together which
# results in the TypeError we get therefore we must turn words[i] into a 1-
# element array ([words[i]]) which will allow us to concatenate the Arrays

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length  
    reversed_words = [words[i]] + reversed_words 
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

#DEBUGGING Card Deck ----------------------------------------------------------- 

# The TypeError we get indicates that the remaining_cards array contains :jack
# :queen etc instead of the integer value. This is because when we use Array#map
# on remaining_cards, map returns a new array which we never use. To solve this
# we assign a variable scores and invoke sum to that array of integers.
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  p player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map do |card|
    score(card)
  end

  sum += scores.sum
end

puts sum 

#DEBUGGING Getting Things Done--------------------------------------------------

# We encountered the SystemStackError because when we use recusrive fucntions
# we must have a condition where the recursion stops and thereore we add 
# return if n == 0 which tells the program to stop and return the arrays when n
# equals 0.

def move(n, from_array, to_array)
  return if n == 0  
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

#DEBUGGING Neutralizer 

# The orginal code fails to remove all the negative words as the mutation of the
# array casued it to skip the second negative word in a row. To fix this issue
# we can use the reject! method to avoid mutation as we iterate over the array.

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! do |word|
    negative?(word)
  end 
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

#DEBUGGING Password-------------------------------------------------------------

# The original code raised a few errors as the local variable we initialzed 
# (password) was out of the scope of the verify_password method and to fix 
# this we must pass password as an argument to the verify_password method. 
# The other issue we found is that set_password is not updating our password as
# expected and therefore we must re-asign password to the return value of 
# set_password.

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password 
  password = set_password
end 


verify_password(password)

#DEBUGGING Number Guessing Game-------------------------------------------------

# The problem with the original code was that it would continiously loop over
# while changing the original winning_number. To fix this we added a break 
# statement if the person guesses the right number and we deleted recursion
# of guess_number. 

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i
    
    if guess == winning_number.to_i
      puts 'Yes! You win.'
      break 
    else
      puts 'Nope. Too small.' if guess < winning_number.to_i
      puts 'Nope. Too big.'   if guess > winning_number.to_i

  
    end
  end
end

guess_number(10, 3)

#DEBUGGING TF-IDF---------------------------------------------------------------

# The problem with the original code was due to our method definition of idf
# where number_of_documents was assigned an integer value which caused the
# program to round to the nearest digit. We fixed this by changing 
# number_of_documents to a float value during division which in turn will return
# a float value. 

# Term frequency - inverse document frequency:
# A measure of how important a term is to a document in a collection of documents
# (the importance increases proportionally to the term frequency in the document,
# but decreases with the frequency of the word across documents)


def tfidf(term, document, documents)
  (tf(term, document) * idf(term, documents)).round(1)
end

# Term frequency (simple version):
# the number of times a term occurs in a document

def tf(term, document)
  document.split(/[\s,.-]/).count { |word| word.downcase == term }
end

# Inverse document frequency:
# measure of how much information the word provides,
# based on the number of documents in which it occurs
# (the rarer it is, the more information it provides)

def idf(term, documents)
  number_of_documents = documents.length
  number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }

  Math.log(number_of_documents.to_f / number_of_documents_with_term)
end

# Very simple example

document1 = "Schrödinger's cat is a thought experiment often featured in discussions of the interpretation of quantum mechanics. The Austrian physicist Erwin Schrödinger devised " +
"it in 1935 as an argument against the Copenhagen interpretation of quantum mechanics, which states that an object in a physical system can simultaneously exist in all possible configurations, " +
"a state called quantum superposition, and only observing the system forces the object into just one of those possible states. Schrödinger disagreed with this interpretation. In particular, " +
"quantum superposition could not work with larger objects. As an illustration, he presented a scenario with a cat in a sealed box, whose fate was linked to a subatomic event that may or may not occur. " +
"In a quantum superposed state of the subatomic particles, the cat would be both alive and dead, until someone opened the box and observed it."

document2 = "The domestic cat is a small, furry, carnivorous mammal. The term cat can, however, also refer to wild cats, which include animals like lions, tigers and leopards. " +
"Cats are claimed to have a lower social IQ than dogs but can solve more difficult cognitive problems and have a longer-term memory. International Cat Day is celebrated on August 8. " +
"Famous cats include Schrödinger's cat as well as Pudding and Butterscotch, which occur in some of the Launch School assignments."

document3 = "One of the core values that sets Launch School apart from some other coding schools out there is our emphasis on Mastery-based Learning. If the key to becoming a competent and confident Software Engineer " +
"is deep understanding of first principles, then the key to acquiring that understanding is through Mastery-based Learning. The core of Mastery-based Learning is replacing time with mastery. There's no graduation, " +
"but a continual learning journey of micro-improvements. At Launch School, we're not trying to catch a wave or take advantage of a surge in demand. Instead, we're trying to focus on things that'll be useful to you for decades to come, " +
"such as a systematic problem-solving approach or learning how to deconstruct a programming language or building sound mental representations of how web application work. Everything we're trying to do at " +
"Launch School is with an eye towards sustainable studying habits and building skills for a long-term career."

documents = [document1, document2, document3]

# The higher the tf-idf score of a term for a document, the more informative
# it is for that document.
# E.g. when someone searches for the term 'cat' in your document collection,
# you want to return document1 and document2, but not document3.
# For the term 'quantum mechanics', on the other hand, you only want to return document1.

# expected outputs:
puts tfidf("cat", document1, documents) # ~ 1.2
puts tfidf("cat", document2, documents) # ~ 1.6
puts tfidf("cat", document3, documents) # 0

puts tfidf("quantum", document1, documents) # ~ 5.5
puts tfidf("quantum", document2, documents) # 0
puts tfidf("quantum", document3, documents) # 0

puts tfidf("mastery", document1, documents) # 0
puts tfidf("mastery", document2, documents) # 0
puts tfidf("mastery", document3, documents) # ~ 4.4

puts tfidf("some", document1, documents) # 0
puts tfidf("some", document2, documents) # ~ 0.4
puts tfidf("some", document3, documents) # ~ 0.4

#DEBUGGING What's wront with the output? ---------------------------------------

# The main problem with the code was the use of the do..end block. It causes
# p arr.sort to bind due to Ruby's precedence rules. To fix this we can get rid
# of the do..end block and use braces instead.

arr = ["9", "8", "7", "10", "11"]
 
p arr.sort { |x, y| y.to_i <=> x.to_i }

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 




 










 
