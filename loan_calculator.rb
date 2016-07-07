# Request information required to calculate loan payment and store as variables
# We need the loan amount, APR, and loan duration 
puts "Enter the total loan amount:"
loan_amount = gets.chomp.to_f

puts "Please enter the Annual Percentage Rate (APR) for your loan:"
apr = gets.chomp.to_f
monthly_rate = (apr / 100) / 12

puts "Please enter the loan duration in years:"
loan_years = gets.chomp.to_i
loan_months = loan_years * 12

monthly_payment = loan_amount*(monthly_rate*(1 + monthly_rate)**loan_months) / ((1 + monthly_rate)**loan_months - 1)

puts "Your monthly mortgage payment will be: #{monthly_payment}"