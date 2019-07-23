def prompt(message)
  puts "=> #{message}"
end

def validate_int(num)
  num == num.to_i.to_s
end

def validate_float(num)
  num == num.to_f.to_s
end

def calculate(loan_amount, annual_pr, loan_duration_years)
  monthly_rate = annual_pr / 12
  loan_duration_months = loan_duration_years * 12
  loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(0 - loan_duration_months)))
end

prompt("Welcome to the Morgtage Calculator Program!")

prompt("Please enter the loan amount in dollars")
loan_amount = gets.chomp
while validate_int(loan_amount) == false && validate_float(loan_amount) == false
  prompt("Invalid entry, please try again")
  prompt("Please enter the loan amount in dollars")
  loan_amount = gets.chomp
end

prompt("Please enter the Annual Percentage Rate (APR) as a decimal")
annual_pr = gets.chomp
while validate_int(annual_pr) == false && validate_float(annual_pr) == false
  prompt("Invalid entry, please try again")
  prompt("Please enter the Annual Percentage Rate (APR) as a decimal")
  annual_pr = gets.chomp
end

prompt("Please enter the loan duration in years")
loan_duration_years = gets.chomp
while validate_int(loan_duration_years) == false
  prompt("Invalid entry, please try again")
  prompt("Please enter the loan duration in years")
  loan_duration_years = gets.chomp
end

final = calculate(loan_amount.to_f, annual_pr.to_f, loan_duration_years.to_f)
prompt("Your monthly payment will be #{final} dollars")
prompt("Your total payment will be #{final * loan_duration_years.to_f * 12}")
