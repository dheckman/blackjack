# class Blackjack
#   def run
#     fail "You need to add some functionality here before you can use this."
#   end
# end
# class Deck
#   attr_accessor :complete_deck_values, :total_cards
#   def values_of_deck
    @complete_deck_values = {
      "queen" => 10,
      "jack" => 10,
      "ace" => 11,
      "one" => 1,
      "two" => 2,
      "three" => 3,
      "four" => 4,
      "five" => 5,
      "six" => 6,
      "seven" => 7,
      "eight" => 8,
      "nine" => 9,
      "ten" => 10 }

      @complete_deck_values[]


#     end
#   # complete_deck_values.keys.sort.each do |value|
#   #   puts "#{value}"
#   #   end
#    def total_cards
#     @total_cards = @complete_deck_values
#    end
# end


class Begin
  def greeting(name)
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
end

class Play
  def hit
    @hit = rand(1..11)
  end
  def round_1
    @player_card1 = hit
    puts @player_card1
    @player_card2 = hit
    puts @player_card2
    @total_card_value = @player_card1 + @player_card2
      if @total_card_value == 21
        puts "You win! Go eat cake."
        player_bank += 10
        exit
      else
      puts "Would you like to HIT or STAND?"
      hit_or_stand = gets.chomp.downcase
      if hit_or_stand == "hit"
      puts hit






        @player_card3 = @hit
        if (@player_card1.to_i + @player_card2.to_i + @player_card3.to_i) > 21
          puts "You LOSE."
          exit
        elsif (@player_card1.to_i + @player_card2.to_i + @player_Card3.to_i) == 21
          puts "You win! Go eat cake."
        else
          puts "Would you like to HIT or STAND?"
        end
      end
  end
end
end
  # def deal_to_dealer
  #   @dealer_card1 = rand(1..11)
  #   @dealer_card2 = rand(1..11)
  # def play
  # end
  #
  # def stand
  #
  # end
  #


#end
#
player = Play.new
player.hit
player.round_1
# deck.each do |card, value|
#   puts "#{card} : #{value}."
# end
