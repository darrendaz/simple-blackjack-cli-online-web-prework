require_relative "blackjack.rb"

def runner
  welcome
  card_total = initial_round
  
  until card_total > 21
    hit?(card_total)
    display_card_total(card_total)
  end
  
  end_game(card_total)
end