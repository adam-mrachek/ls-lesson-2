# Request information required to calculate loan payment and store as variables
# We need the loan amount, APR, and loan duration 
puts "Enter the total loan amount:"
loan_amount = gets.chomp

puts "Please enter the Annual Percentage Rate (APR) for your loan:"
apr = gets.chomp.to_f

puts "Please enter the load duration in years:"
loan_years = gets.chomp

