

require_relative 'card'
require_relative 'deck'
require_relative 'hand'


class BlackjackGame
  attr_accessor :run

  def initialize
    @deck = Deck.new
  end

  def hit
    @hand.player_hand << @deck.draw
  end
  def stand
    puts "You stand. Your hand is #{@hand.cards} which is #{@hand.total}"
  end
  def hit_or_stand(input)
    if input.downcase[0] == 'h'
      hit
    else
      stand
    end
  end 

  def run
    puts 'Hello! Let\'s play blackjack!'
    @deck.shuffle
    @hand = Hand.new
    deal
    puts 'What is your name?'
    input = gets.chomp 
    name = input
    puts "Hello #{name}! The cards you have are #{@hand.cards} which is #{@hand.total}"
    puts 'Would you like to (h)it or (s)tand?'
    hit_or_stand(gets.chomp)
  end
  
  def deal
    2.times do 
      @hand.player_hand << @deck.draw
    end
  end

  def wallet
    wallet = $100
  end

end


BlackjackGame.new.run