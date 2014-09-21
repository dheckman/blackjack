class Card
  attr_accessor :value, :suit
  def initialize(v,s)
    @value = v
    @suit = s
    value
  end
  def value
    if @value == "J" || @value == "Q" || @value == "K"
      value = 10
    elsif @value == 'A'
      value = 11
      # if totalcards <= 10
      #   then value = 1
    else
      value = @value
    end
  end
end
class Deck
  attr_accessor :suit, :value, :deck, :return_value, :return_suit
  def initialize
    @h = "\u2661"
    @d = "\u2662"
    @c = "\u2667"
    @s =  "\u2664"
    @suit = [@h, @d, @c, @s]
    @value = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
    @deck = []
    @suit.each do |suit|
      @value.each do |value|
        @deck << Card.new(value,suit)
      end
    end
    shuffle_deck
  end
  def shuffle_deck
    @deck.shuffle!
  end
end
# #
# build_deck = Deck.new
# build_deck = build_deck.deck
#
#
# puts "you have a #{build_deck[0].value} of #{build_deck[0].suit}"

class Player
  attr_accessor :name, :player_hand, :dealer_hand, :player_hand_total, :dealer_hand_total
  # def initialize
  #   @player_hand = []
  #   @dealer_hand = []
  #   @player_hand_total = 0
  #   @dealer_hand_total = 0
  # end
  def hands
    @player_hand_total = @player_hand.inject {|x,y| x + y}
    @dealer_hand_total = @dealer_hand.inject {|x,y| x + y}
  end
end

class Play
  # attr_accessor

  def initialize

    # @player_hand = Deck.new
    @player_hand = 0
    new_deck = Deck.new
    @new_deck = new_deck.shuffle_deck

    start_game
    #  puts @new_deck.count
    #  puts @new_deck[0].value
  end
  #  @player = Player.new("player")
  #  @dealer = Player.new("dealer")
  def start_game
    puts "Hello there! What's your name?"
    name = gets.chomp
    puts "Well #{name}, are you ready to play some Blackjack? Type Yes or No."
    answer = gets.chomp.downcase
    if answer == "yes"
      round_1
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
  @player_hand += @new_deck.pop
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
    while @player_hand_total < 21
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
end
#
me = Play.new
me
