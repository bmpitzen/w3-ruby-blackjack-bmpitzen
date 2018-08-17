puts "TODO Implement the game of blackjack."

require_relative 'card'
require_relative 'deck'
require_relative 'hand'


class BlackjackGame

  def initialize
    @deck = Deck.new
    @deck.shuffle

  end
  
  def deal
    2.times @deck.draw
  end
end

puts 'Hello! Let\'s play blackjack!'
blackjack = Blackjack.new
blackjack.deal

