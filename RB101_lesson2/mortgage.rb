#Mortgage/Car loan calculator
#ask the user for loan amount
#ask for the Annual Percentage Rate (APR)
#ask for the loan duration

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def second_prompt(message)
  Kernel.puts("--- #{message} ---")
end 

def valid_number?(num)
  num.to_i() != 0 
end 

loop do
  prompt("Hello! MORTGAGE CALCULATOR loading..")
  prompt("In order to assit you I will need some information!")
  
  prompt("What is the loan amount? (ex 145623 or 125324.78)")
  loan_amount = ''
  loop do 
    loan_amount = Kernel.gets().chomp()
      
    if loan_amount.empty?() || loan_amount.to_f() < 0
        prompt("Must enter a valid amount.")
    else
      break
    end 
  end
  
  second_prompt("Loan amount: $#{loan_amount}")
  
  prompt("What is the interest rate? (ex. 5 for 5%, 2.5 for 2.5%)")
  interest_rate = ''
  loop do 
    interest_rate = Kernel.gets().chomp()
      
    if interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Please enter a valid rate.")
    else 
      break
    end 
  end 
  
  second_prompt("Loan amount: $#{loan_amount}, Interest Rate: #{interest_rate}%") 
  
  prompt("What is the duration of the loan? (ex. 2 for 2 years)")
  loan_duration = ''
  loop do
    loan_duration = Kernel.gets().chomp()
      
    if loan_duration.empty?() || loan_duration.to_f() < 0
      prompt("Please provide a valid duration.")
    else 
      break
    end
  end 
  
  second_prompt("Loan amount: $#{loan_amount}, Interest Rate: #{interest_rate}%, Duration of Loan: #{loan_duration} years")
  
  monthly_interest_rate = (interest_rate.to_f() / 100) / 12.0 
  loan_duration_in_months = loan_duration.to_f() * 12
  
  monthly_payment = loan_amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
  
  prompt("Given the following information, we have calculated your monthly payment.")
  second_prompt("#{monthly_payment}")
  
  prompt("Would you like to calculate again? If so say 'yes'")
  answer = Kernel.gets().chomp()
  break unless answer == "yes"

end

prompt("Thank you for using MORTGAGE CALCULATOR!")


