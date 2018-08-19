class Hand
  attr_accessor :player_hand

  def initialize
    @player_hand = []
  end

  def cards
    cards = @player_hand.map(&:to_s)
  end

  def total
    @player_hand.map(&:value).sum
  end

  def busted?
    if total > 21
      puts 'You bust! Game Over'
      true
      return
    else
      puts "evluate against dealer"
      false
    end
  end

end
