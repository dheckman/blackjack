class Player
  attr_accessor :hit, :stand, :bet
  def initialize(hit,stand,bet)
    @hit = hit
    @stand = stand
    @bet = bet
  end
  def hit
    rand(1..11)
  end
  def stand
    #go to dealer's turn
  end
  def bet
    playerbank - 10
  end

# class Play
#     def greeting
#       puts "Hi! Let's play some blackjack!"
#     end
#     @playercard1 = hit
#     @playercard2 = hit
#     @total
#
#
# end
# class Dealer
#   attr_accessor :hit, :stand
#   def initialize(hit,stand)
#     @hit = hit
#     @stand = stand
#   end
#   def hit
#     rand(1..11)
#   end
#   def stand
#     #only if cards > 17
#   end
# end
#
# class Hand
#   player_hand = 0
#   dealer_hand = 0
# class Game
#   def initialize()
#   end
#   def round_1
#   2.times do
#     player_hand << shuffledeck.shift
#     dealer_hand << shuffledeck.shift
#   end
#
# end
#
# #my_deck = Deck.new("2", "Two", 2)
