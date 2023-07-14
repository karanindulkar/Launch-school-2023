#------------------Easy 1-------------------------

#Question 1

#Answer:
#1
#2
#2
#3

#Question 2

#Answer:
#1. "!=" not equal to 
#2. "! before something" = turns any object into the opposite of their boolean equivalent
#3. "! after something" = if at the end of a method its part of the method name, or mutates the caller
#4. "? before something" = ternary operator for if/else
#5. "? after something" = part of method name
#6. "!! before something" = turns any obkect into their boolean equivalent

#Question 3 
#Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

#Answer:
advice.gsub!('important', 'urgent')
puts advice

#Question 4

#Answer:
# numbers.delete_at(1) deletes the value at index[1] in the array
# numbers.delete(1) deletes the value 1 from the array

#Question 5
#Programmatically determine if 42 lies between 10 and 100.

#Answer:
(10..100).cover?(42)

#Question 6
#show two different ways to put the expected "Four score and " in front of it

#Answer:
famous_words = "seven years ago..."

puts "Four score and " + famous_words
puts "Four score and " << famous_words 

#Question 7

#Make this into an un-nested array.
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones

#Answer:
flintstones.flatten! 
p flintstones


#Question 8

#Create an array containing only two elements: Barney's name and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

#Answer:

p flintstones.assoc("Barney")

#------------------Easy 2-------------------------

#Question 1

#see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#Answer:

p ages.key?("Spot")
p ages.fetch("Spot", "Spot is not there")

#Question 2

#Convert the string in the following ways (code will be executed on original munsters_description above):

munsters_description = "The Munsters are creepy in a good way."

#Answer:

p munsters_description.swapcase
p munsters_description.capitalize 
p munsters_description.downcase
p munsters_description.upcase

#Question 3

#add ages for Marilyn and Spot to the existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

#Answer:

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages 

#Question 4

#See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

#Answer:

p advice.include?("Dino")

#Question 5

#Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

#Answer:

flintstones = %w(Fred Barney Wilma Betty, Bambam Pebbles)

#Question 6

#How can we add the family pet "Dino" to our usual array:

#Answer:

flintstones << "Dino"

p flintstones

#Question 7

#How can we add multiple items to our array? (Dino and Hoppy)

#Answer:

flintstones << "Tiger" << "Hoppy" 

p flintstones

#Question 8

#Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

#Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

#Answer:

p advice.slice!("Few things in life are as important as ")
p advice 

#Question 9

#Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

#Answer:

p statement.count('t') 

#Question 10

#Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

#Answer:

p title.center(40)

#------------------Medium 1-------------------------

#Question 1

#For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

#Answer:

10.times { |number| puts (" " * number) + "The Flintstones Rock!"}

#Question 2

#The result of the following statement will be an error:
#  puts "the value of 40 + 2 is " + (40 + 2)

#Answer:

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}" 

#Question 3

#Alan wrote the following method, which was intended to show all of the factors of the input number:

#Answer:

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end

p factors(21)

#Question 4


#Answer:

#Question 5



def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#Answer:

#You must place the limit variable declaration within the fib defintion as outside of the defintion, there is no access to it

#Question 6

#What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#Answer:

#34 because mess_with_it does not mutate the caller(pass by value example)

#Question 7

#Did the family's data get ransacked? Why or why not?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

p mess_with_demographics(munsters)

#Answer:

#Yes 

#Question 8

#What is the result of the following call?

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#Answer:

#Paper


#Question 9

#What would be the return value of the following method invocation?

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

#Answer:

#"no"

#------------------Medium 2-------------------------

#Question 1

#Take a look at the following code and predict the output:

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

#Answer:

# a and c will have the same object ID but  will not

#Question 2

#Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

#Answer:

# all a b and c will have the same object IDs

#Question 3

#Study the following code and state what will be displayed...and why:


def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

#Answer:

#string_arg_one will remain as pumpkins wheras string_arg_two will be pumpkinsrutabaga

#Question 4

#To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the user's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#Answer:

# my_string will be "pumpkinsrutabaga" and my_array will be ['pumpkins']

#Question 5

#How can we change this code to make the result easier to predict and easier for the next programmer to maintain? That is, the resulting method should not mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and my_array should be set to ['pumpkins', 'rutabaga']

def new_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = new_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#Answer:

# if we add return to a_strng_param and an_array_param in the method definition

#Question 6

#How could the following method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#Answer:

#ruby will automatically evaluate statements 

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("blue")


#------------------Hard 1-------------------------

#Question 1

#What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

p greeting

#Answer:

#because everything in ruby evaluates to true other than false greting will be assigned as nil

#Question 2

#What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

#Answer:

# greetings should be the hash (a: 'hi there') because we are mutating the object when we use append

#Question 3

#What will be printed by each of these code groups?


#Answer:

#For A) and B) it will not change but wit C) it will change 

#Question 4

#Help Ben fix his code.

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

#Answer: