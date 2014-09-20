
              #ALL THE METHODS

              #attr_accessor makes methods
class Play
def hit
  rand(1..11)
end
def stand
  #goes to dealer's turn
end
def bank
  @start_bank = 100
  @loser_bank = @start_bank - 10
  @winner_bank = @start_bank + 10
end
def win
  "You win! Play again?"
end
def lose
  "You lose! Play again?"
end
def greeting
  puts "Hello there! What's your name?"
  name = gets.chomp
  @name = name
  puts "Well #{@name}, are you ready to play some Blackjack? Type Yes or No."
  answer = gets.chomp.downcase
  if answer == "yes"
    play_round_1
  elsif answer == "no"
    puts "Fine then, I didn't want to play with you anyway."
    exit
  elsif answer != "yes" || answer != "no"
    puts "You clearly don't know how to read directions. Bye!"
    exit
  end
end
 def shuffle_deck
   @shuffled_cards = ["hearts","spades","clubs", "diamonds"].shuffle!
   @shuffled_cards1 = @shuffled_cards[0]
   @shuffled_cards2 = @shuffled_cards[1]
   @shuffled_cards3 = @shuffled_cards[3]
  end
def play_round_1
  shuffle_deck
  # @shuffled_cards = ["Hearts","Spades","Clubs", "Diamonds"].shuffle!
  # #shuffled_cards = @shuffled_cards.shuffle!
  # @shuffled_cards1 = @shuffled_cards[0]
  # @shuffled_cards2 = @shuffled_cards[1]

  @card1 = hit
  puts "#{@card1} of #{@shuffled_cards1}."
  @card2 = hit
  puts "#{@card2} of #{@shuffled_cards2}."
  @total_cards = @card1 + @card2
  if @total_cards == 21
    puts win
    puts @winner_bank
  elsif @total_cards > 21
    puts lose
    puts @loser_bank
  else
    puts "Hit or Stand?"
  end
    hit_or_stand = gets.chomp.downcase
    if hit_or_stand == "hit"
      play_round
    else
      #dealer's turn somehow
    end

end
# end
 def play_round
   @card3 = hit
   puts "#{@card3} of #{@shuffled_cards3}."
   @total_cards = @card1 + @card2 + @card3
   if @total_cards == 21
     puts win
     puts @winner_bank
   elsif @total_cards > 21
     puts lose
     puts @loser_bank
   else
     puts "Hit or Stand?"
   end
   hit_or_stand = gets.chomp.downcase
   if hit_or_stand == "hit"
    @card = hit
     puts @card
   else
     #go to dealer's turn
   end
 end

end
game = Play.new
game.greeting
# game.play_round_1
# game.play_round
