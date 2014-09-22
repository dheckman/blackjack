# class Blackjack
#   def run
#     fail "You need to add some functionality here before you can use this."
#   end
# end
class Deck
  attr_accessor :complete_deck_values, :total_cards
  def values_of_deck
    @complete_deck_values = {
      @queen => 10,
      @jack => 10,
      @ace_low => 1,
      @ace_high => 11,
      @one => 1,
      @two => 2,
      @three => 3,
      @four => 4,
      @five => 5,
      @six => 6,
      @seven => 7,
      @eight => 8,
      @nine => 9,
      @ten => 10 }
    end
  # complete_deck_values.keys.sort.each do |value|
  #   puts "#{value}"
  #   end
   def total_cards
    @total_cards = @complete_deck_values
   end
end


class Begin
  def initialize(name)
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
  def player_bank(begin_amount)
    @begin_amount = 100
  end

class Play
  def hit
    @hit = rand(1..11)
  end
  def round_1
    @player_card1 = rand(1.11)
    puts @player_card1
    @player_card2 = rand(1..11)
    puts @player_card2
      if @player_card1 + @player_card2 == 21
        puts "You win! Go eat cake."
        player_bank += 10
        exit
      else
      puts "Would you like to HIT or STAND?"
      hit_or_stand = gets.chomp.downcase
      if hit_or_stand == "hit"
        hit
        @player_card3 = @hit
        if @player_card1 + @player_card2 + @player_card3 > 21
          puts "You LOSE."
          exit
        elsif @player_card1 + @player_card2 + @player_Card3 == 21
          puts "You win! Go eat cake."
        else
          puts "Would you like to HIT or STAND?"
        end
    end
  end
  def deal_to_dealer
    @dealer_card1 = rand(1..11)
    @dealer_card2 = rand(1..11)
  def play
  end

  def stand

  end



end
#
# player = Player.new("name")
# deck.each do |card, value|
#   puts "#{card} : #{value}."
# end
