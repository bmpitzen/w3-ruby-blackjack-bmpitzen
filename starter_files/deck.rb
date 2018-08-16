require_relative "card"



class Deck
attr_accessor :deck
  def initialize
    @deck = []
    ranks = [:A,2,3,4,5,6,7,8,9,10,:J,:Q,:K]
    ranks.each do |rank|
      @deck << Card.new(rank, :clubs)
    end
    ranks.each do |rank|
      @deck << Card.new(rank, :diamonds)
    end
    ranks.each do |rank|
      @deck << Card.new(rank, :hearts)
    end
    ranks.each do |rank|
      @deck << Card.new(rank, :spades)
    end
    
  end

  def cards_left
    @deck.length
  end

  def draw
    @deck.shift
  end

  def shuffle
    @deck.shuffle
  end

end
