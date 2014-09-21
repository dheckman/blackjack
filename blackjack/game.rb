blackjack = 21
bust >= 21

class Card
  attr_accessor :value, :suit
  def initialize(v,s)
    @value = v
    @suit = s
  end
  def value(value)
    if @value == "J" || @value == "Q" || @value = "K"
      value = 10
    elsif @value == 1
      value = 11 #if totalcards <= 10
    else value = 1
    else
      value = @value
    end
  end
end
class Deck
  attr_accessor :suits, :values, :deck, :return_value :return_suit
  def deck_of_cards
    @suit = ['H','D','C','S']
    @value = ['1','2','3','4','5','6','7','8','9','10','J','Q','K','A']
    @deck = Array.new
    @suit.each do |suit|
      @value.each do |values|
        @deck << Card.new[suit, values]
      end
    end
     def shuffled
      @deck.shuffle![0][1]
     end
  end
end

def blackjack
  21
end
def bust
  > 21
end

def hands
  @player_hand = Array.new(0)
  @dealer_hand = Array.new(0)
  @player_hand_total = @player_hand.inject {|x,y| x + y}
  @dealer_hand_total = @dealer_hand.inject {|x,y| x + y}
  if @dealer_hand.blackjack
    puts "WINNER! Do you want to play again?"
  elsif @dealer_hand.bust
    puts "Sorry, you lose! Do you want to play again?"
  end
end

class Play
  attr_accessor :blackjack, :bust
  def initialize
    @blackjack = 21
    @bust >= 21
  end
  def greeting
    puts "Hello there! What's your name?"
    name = gets.chomp
    @name = name
    puts "Well #{@name}, are you ready to play some Blackjack? Type Yes or No."
    answer = gets.chomp.downcase
    if answer == "yes"
      #play FIGURE THIS OUT LATER
    elsif answer == "no"
      puts "Fine then, I didn't want to play with you anyway."
      exit
    elsif answer != "yes" || answer != "no"
      puts "You clearly don't know how to read directions. Bye!"
      exit
    end
  end

  def start_game
  2.times do
    @player_hand << @deck.pop
    @dealer_hand << @deck.pop
    puts "#{@return_value} of #{@return_suit}s."
  end
  end
  def play
  end

me = Play.new
puts me.greeting
puts me.play
