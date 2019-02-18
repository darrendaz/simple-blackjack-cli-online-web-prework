def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  return card
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp

end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0
  2.times do
    card_total += deal_card
  end
  display_card_total(card_total)
  
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
  else 
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until card_total > 21
    hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
end
    
