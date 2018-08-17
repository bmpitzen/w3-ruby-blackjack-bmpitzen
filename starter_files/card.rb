class Card

attr_accessor :rank, :suit

def initialize ( rank, suit )
  @rank = rank
  @suit = suit
end

def greater_than? (card)
  order = [:A,1,2,3,4,5,6,7,8,9,10,:J,:Q,:K]
  order.index(@rank)>order.index(card.rank)
end

def to_s
"#{rank} of #{suit}"
end

def value
  if @rank == :A
    11
  elsif @rank.is_a?(Integer)
    @rank
  else
    10
  end
end

def ==(another_card)
  self.suit == another_card.suit and
  self.rank == another_card.rank
end

end
