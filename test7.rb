


class Deck
  attr_accessor :value, :suit, :number
  def initialize(value, suit, number)
    @value = value
    @suit = suit
    @number = number
  end
  def to_s
    "A #{number} of #{suit} has a value of #{value}."
  end
end

deck_of_cards = []
deck_of_cards = Deck.new("2", "Hearts", 2)
deck_of_cards = Deck.new("3", "Hearts", 3)
puts deck_of_cards.to_s
