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

  def compare_total
    if total > 21
      puts 'You bust! Game Over'
    else
      puts "Your final hand is #{total}"
    end
  end
end
