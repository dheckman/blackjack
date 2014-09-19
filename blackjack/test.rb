
  complete_deck = { "queen" => 10,
  "jack" => 10,
  "ace" => 1,
  "once" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9,
  "ten" => 10
  }

complete_deck.each do |card, value|
  puts " #{value}"
end

 puts 4.times(10)
