require_relative 'lib/card'
require_relative 'lib/deck'
require_relative 'lib/hand'

class BlackjackGame
  attr_accessor :run

  def initialize
    @deck = Deck.new
  end

  def player_name
    puts 'What is your name?'
    input = gets.chomp
    @name = input
  end

  def hit
    @hand.player_hand << @deck.draw
    puts "Your new hand is #{@hand.cards} which is #{@hand.total}"
  end

  def stand
    puts "You stand. Your hand is #{@hand.cards} which is #{@hand.total}"
  end

  # def hit_or_stand
  #   if hit_answer.downcase[0] == 'h'
  #     hit
  #   else
  #     stand
  #   end
  # end

  def hit_loop
    hit_answer = ''
    while hit_answer.downcase[0] != 's'
      if !@hand.busted?
        puts 'Would you like to (h)it or (s)tand?'
        hit_answer = gets
        if hit_answer.downcase[0] == 'h'
          hit
        else
          stand
          return
        end
      else
        puts 'You busted! Game Over'
        return
      end
    end
  end

  # def play(input)
  #   input = gets.chomp
  #   puts "Your wallet has #{@wallet} would you like to bet $10 and play? (y)es or (n)o"
  #   if input.downcase[0] == 'y'
  #     BlackjackGame.run
  #   elsif input.downcase[0] == 'n'
  #     return
  #   else
  #     puts 'That is not a valid response'
  #   end
  # end

  def run
    puts 'Hello! Lets play blackjack!'
    @deck.shuffle
    @hand = Hand.new
    deal
    player_name
    puts "Welcome #{@name}! Your wallet starts with $100 and you bet $10 each hand."
    puts "The cards you have are #{@hand.cards} which is #{@hand.total}"
    hit_loop
  end

  def deal
    2.times do
      @hand.player_hand << @deck.draw
    end
  end

  def wallet
    @wallet = '$100'
  end
end

BlackjackGame.new.run
