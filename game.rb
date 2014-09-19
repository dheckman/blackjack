
y = rand(1..100)
def run_game(random_number)
  puts "Guess a number between 1 and 100."
  answer = gets.chomp.to_i
  if answer == random_number
    puts "You guessed correctly. Go have some cake."

  elsif answer < random_number
      puts "Too low, try again."
      run_game(random_number)
  elsif answer > random_number
      puts "Too high, try again."
      run_game(random_number)
  end
end

run_game(y)
