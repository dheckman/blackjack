kings = [10,10,10,10]
queens = [10,10,10,10]
jacks = [10,10,10,10]
tens = [10,10,10,10]
nines = [9,9,9,9]
eights = [8,8,8,8]
sevens = [7,7,7,7]
sixes = [6,6,6,6]
fives = [5,5,5,5]
fours = [4,4,4,4]
threes = [3,3,3,3]
twos = [2,2,2,2]
# all_cards = Array.new
# all_cards.push *kings queens
# puts all_cards
all_cards = kings + queens + jacks + tens + nines + eights + sevens + sixes + fives + fours + threes + twos
puts all_cards
all_cards.shuffle!
puts all_cards
