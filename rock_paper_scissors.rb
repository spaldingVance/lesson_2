VALID_CHOICES = %w(rock paper scissors lizard spock)
def prompt(message)
  puts "=> #{message}"
end

WIN_HASH = {
  rock: ['scissors', 'lizard'], paper: ['rock', 'spock'], 
  scissors: ['paper', 'lizard'], lizard: ['spock', 'paper'],
  spock: ['rock', 'scissors']
}

def win?(first, second)
    WIN_HASH[first.to_sym].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def select_move(first_letters)
  verified_choice = ''
  if first_letters.downcase == 's'
    prompt("Please enter 'sc' for scissors or 'sp' for spock")
    return 'invalid'
  else
    VALID_CHOICES.each do |choice| 
      if choice.start_with?(first_letters) 
        verified_choice = choice
        return verified_choice
        break
      else
        return 'invalid'
      end
    end
  end
end

prompt("Welcome to #{VALID_CHOICES.join(', ')}")

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if select_move(choice) != 'invalid'
      choice = select_move(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, Computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again? y/n")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
