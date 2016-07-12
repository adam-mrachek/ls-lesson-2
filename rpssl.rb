VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

def prompt(message)
  puts ">>> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
    (first == 'lizard' && (second == 'spock' || second = 'paper'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You win!"
  elsif win?(computer, player)
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.values.join(', ')}"
    prompt "Or choose: #{VALID_CHOICES.keys.join(', ')} for a quicker game."
    choice = gets.chomp.downcase

    if VALID_CHOICES.keys.include?(choice)
      choice = VALID_CHOICES[choice]
      break
    elsif VALID_CHOICES.values.include?(choice)
      break
    else
      prompt "That's not a valid choice."
    end
  end

  computer_choice = VALID_CHOICES.values.sample

  puts "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_results(choice, computer_choice)

  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing!"
