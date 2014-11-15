
blackjack = 21
bust >= 21


class Player
  attr_accessor :hand, :player_hand, :dealer_hand, :player_hand_total, :dealer_hand_total
  def initialize
    @player_hand = []
    @dealer_hand = []
    @player_hand_total = 0
    @dealer_hand_total = 0
  end
  def player_hand_total
    player_hand.inject {|x,y| x + y}
  end
  def dealer_hand_total
    @dealer_hand.inject {|x,y| x + y}
  end
  def value(value)
    if @value == "J" || @value == "Q" || @value == "K"
      value = 10
    elsif @value == 1
      value = 11 #if totalcards <= 10
    else
      value = @value
    end
  end
  def blackjack
    21
  end
  def bust
    x > 21
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

  def initialize
    @player = Player.new
    @dealer = Player.new
    new_deck = Deck.new
    @new_deck = new_deck
    start_game
  end
  def start_game
    puts "Hello there! What's your name?"
    name = gets.chomp
    puts "Well #{name}, are you ready to play some Blackjack? Type Yes or No."
    answer = gets.chomp.downcase
    if answer == "yes"
      round_1
    end
  end
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
  def round_1
    #2.times do
    @player << @new_deck
    puts @player_hand
    player_calculate
    @dealer_hand << @new_deck[1]
    puts @dealer_hand
    dealer_calculate
    player_turn
    #end
  end
  def player_turn
    @player_hand << @new_deck[1]
    puts @player_hand
    player_calculate
  end
  def player_calculate
    while @player_hand.player_hand_total < 21
      puts "Hit or Stand?"
      answer = gets.chomp.downcase!
      if answer == "hit"
        player_turn
      else dealer_turn
      end
    end
    if @player_hand_total == 21
      puts "You win! Go have some cake."
    elsif @player_hand_total > 21
      puts "Busted!"
      exit
    end
  end
  def dealer_turn
    @dealer_hand << @new_deck.pop
    puts @dealer_hand
    dealer_calculate
  end
  def dealer_calculate
    while @dealer_hand_total < 17
      dealer_turn
    end
    if @dealer_hand_total == 21
      puts "Dealer wins!"
    elsif @dealer_hand_total > 21
      puts "Dealer busts, you win!"
    end
  end
  def start_game
    2.times do
      @player_hand << @deck.pop
      @dealer_hand << @deck.pop
      puts "#{@return_value} of #{@return_suit}s."
    end
  end
end
end
