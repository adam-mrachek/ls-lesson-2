def valid_number?(num)
  num.to_i > 0 && num.to_i != 0
end

puts ""
puts "--> Welcome to the Mortgage Loan Calculator! <--".center(60)
puts "This calculator will estimate your monthly mortgage payment.".center(60)
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".center(60)

loop do
  puts "To start, please enter the total loan amount:"

  loan_amount = ''
  loop do
    loan_amount = gets.chomp.delete('$,').to_f

    if valid_number?(loan_amount)
      break
    else
      puts "Please enter a valid loan amount."
      puts "(Numbers only. No letters or special characters.)"
    end
  end

  apr = ''
  loop do
    puts "Next, enter the Annual Percentage Rate (APR) for your loan:"
    puts "If your rate is 5%, enter 5. If your rate is 2.5%, enter 2.5."
    apr = gets.chomp.delete('%').to_f

    if valid_number?(apr)
      break
    else
      puts "Hmm, it looks like you entered an invalid interest rate."
    end
  end

  loan_years = ''
  loop do
    puts "Lastly, enter the loan duration in years:"
    loan_years = gets.chomp.to_i

    if valid_number?(loan_years)
      break
    else
      puts "Hmmm, that doesn't appear to be a valid number."
    end
  end

  loan_months = loan_years * 12
  monthly_rate = (apr / 100) / 12
  monthly_payment = loan_amount *
                    (monthly_rate * (1 + monthly_rate)**loan_months) /
                    ((1 + monthly_rate)**loan_months - 1)

  puts "Your monthly payment will be: $#{monthly_payment.to_f.round(2)}"

  puts "Would you like to do another calculation?"
  response = gets.chomp.downcase

  break unless response.start_with?('y')
end

puts "Thanks for using the Mortgage calculator!"
puts "Have a great day!"
