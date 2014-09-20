class Deck
  attr_accessor :all_cards, :kings, :queens, :jacks, :tens, :nines, :eights, :sevens, :sixes, :fives, :fours, :threes, :twos
  def cards
    @kings = [10,10,10,10]
    @queens = [10,10,10,10]
    @jacks = [10,10,10,10]
    @tens = [10,10,10,10]
    @nines = [9,9,9,9]
    @eights = [8,8,8,8]
    @sevens = [7,7,7,7]
    @sixes = [6,6,6,6]
    @fives = [5,5,5,5]
    @fours = [4,4,4,4]
    @threes = [3,3,3,3]
    @twos = [2,2,2,2]
    @all_cards = Array.new
    @all_cards = (@kings + @queens + @jacks + @tens + @nines + @eights + @sevens + @sixes + @fives + @fours + @threes + @twos)
  end
end
class Play < Deck
  def greeting
    puts "Hello there! What's your name?"
    @name = gets.chomp
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
  def play
      @hit = rand(1..11)
      puts "I'm going to deal you two cards."
      puts @hit
      puts @hit
      # @player_card1 = @hit
      # puts @player_card1.to_i
      # @player_card2 = @hit
      # puts @player_card2.to_i
      @total_card_value = (@player_card1 + @player_card2).to_i
        if @total_card_value == 21
          puts "You win! Go eat cake."
          #player_bank += 10
          exit
        else
        puts "Would you like to HIT or STAND?"
        end
        hit_or_stand = gets.chomp.downcase
        if hit_or_stand == "hit"
        puts @all_cards
        until hit_or_stand == "stand"
          puts @all_cards
        end
      end
    end
end

me = Play.new
puts me.greeting
puts me.play
