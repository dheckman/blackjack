class Play
  def hit
    rand(1..11)
  end
  def round_1
    @player_card1 = hit
    puts @player_card1
    @player_card2 = hit
    puts @player_card2
      if @player_card1 + @player_card2 == 21
        puts "You win! Go eat cake."
        player_bank += 10
        exit
      else
      puts "Would you like to HIT or STAND?"
      hit_or_stand = gets.chomp.downcase
      end
      if hit_or_stand == "hit"
      round_2  #go to round 2
      #else #go to dealer's turn
      end
    end
  def round_2
    @player_card3 = hit
    puts @player_card3
    if (@player_card1 + @player_card2 + @player_card3).to_i > 21
      puts "You LOSE."
      exit
    elsif (@player_card1 + @player_card2 + @player_Card3).to_i == 21
      puts "You win! Go eat cake."
    end
  end
end


#         else
#           puts "Would you like to HIT or STAND?"
#         end
#       end
#     end
#     end
# end

me = Play.new
me.round_1.round_2
