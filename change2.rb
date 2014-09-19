class MakeChange
  def greeting()
    puts "Not you again! Whatever. Give me a $ value."
    @input1 = gets.chomp
    #puts @input1
  end
  def dollar_change
    @new_input = @input1.to_f * 100
    @dollars = (@new_input / 100).to_i
    puts "You need #{@dollars} $1 bill(s)."
  end
  def quarter_change
    @quarters = (@new_input % 100).to_i / 25
    puts "You need #{@quarters} quarter(s)."
    #@new_input -= @quarters
  end
  def dime_change
     @dimes = (@new_input % 25).to_i / 10
     puts "You need #{@dimes} dime(s)."
  end
  def nickel_change
    #i don't understand why this works
    @nickels = (@new_input % 5).to_i / 5
    puts "You need #{@nickels} nickel(s)."
  end
  def penny_change
    @pennies = (@new_input % 5).to_i / 1
    puts "You need #{@pennies} pennies."
  end
   def complete
     greeting
     dollar_change
     quarter_change
     dime_change
     nickel_change
     penny_change
    puts "You will need #{@dollars} dollar bills, #{@quarters} quarter(s), #{@dimes} dime(s), #{@nickels} nickel(s)\nand #{@pennies} pennies."
    puts "How bout them apples?"

   end
end
me = MakeChange.new
me.complete
=begin
me.greeting
me.dollar_change
me.quarter_change
me.dime_change
me.nickel_change
me.penny_change
=end
