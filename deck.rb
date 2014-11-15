class Deck
  attr_accessor :suits, :values, :deck
  def deck_of_cards
    @suits = ['H','D','C','S']
    @values = ['1','2','3','4','5','J','Q','K','A']
    @deck = Array.new
    @suits.each do |suit|
      @values.each do |values|
        @deck << [suit, values]
      end
    end
    def shuffle
      @return_value = @deck.shuffle![0][1]
      @return_suit = @deck.shuffle![0][0]
    end
  end
  # def deal
  #   @player_cards << @deck.pop
  #   @dealer_cards << @deck.pop
  # end
end
me = Deck.new
me.shuffle





#
# @player_cards =[]
# @dealer_cards = []
