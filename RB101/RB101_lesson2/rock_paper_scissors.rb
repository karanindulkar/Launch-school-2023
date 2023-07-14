VALID_CHOICES = %w(Rock Paper Scissors)

def prompt(message)
  Kernel.puts("#{message}")
end

def win?(first, second)
  (first == 'Rock' && second == 'Scissors') ||
    (first == 'Paper' && second == 'Rock') ||
    (first == 'Scissors' && second == 'Paper')
end 

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won! Congratulations!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("You tied!")
  end 
end 

loop do 
  user_choice = ' '
  loop do
    prompt("Time to play Rock, Paper Scissors!")
    prompt("Ready? Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("3")
    prompt("2")
    prompt("1")
    user_choice = Kernel.gets().chomp()
    
    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("Thats not a valid choice.")
    end 
  end
  
  computer_choice = VALID_CHOICES.sample()
  
  display_results(user_choice, computer_choice)
  
  prompt("You chose: #{user_choice}, Computer chose: #{computer_choice}")
  
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer == 'Yes'

end 



