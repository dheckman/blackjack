class Play
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
  def play
      @hit = rand(1..11)
      puts "I'm going to deal you two cards."
      @player_card1 = @hit
      puts @player_card1
      @player_card2 = @hit
      puts @player_card2
      @total_card_value = @player_card1 + @player_card2
        if @total_card_value == 21
          puts "You win! Go eat cake."
          #player_bank += 10
          exit
        else
        puts "Would you like to HIT or STAND?"
        end
        hit_or_stand = gets.chomp.downcase
        if hit_or_stand == "hit"
        puts @hit
        until hit_or_stand == "stand"
          puts @hit
        end
      end
    end
end

me = Play.new
puts me.greeting
puts me.play
