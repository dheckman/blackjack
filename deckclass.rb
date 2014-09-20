class Deck
  attr_accessor :suits, :cards, :deck
  def deck_of_cards
    @suits = ['H','D','C','S']
    @cards = ['1','2','3','4','5','J','Q','K','A']
    @deck = Array.new
    @suits.each do |suit|
      @cards.each do |card|
        @deck << [suit, card]
      end
    end
    @deck = deck.shuffle![0][1]

  end
end

me = Deck.new
me.deck_of_cards




player_cards =[]
dealer_cards = []
#
def start_game
2.times do
  player_cards << deck.pop
  dealer_cards << deck.pop
end
end
