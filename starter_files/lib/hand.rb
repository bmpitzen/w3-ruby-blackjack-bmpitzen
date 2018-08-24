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
    total > 21
  end

end
