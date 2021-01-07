class CoffeeMachine

  def initialize
    @water_status = 400
    @milk_status = 540;
    @coffee_beans_status = 120;
    @disposable_cup_status = 9;
    @money_status = 550;
    @choice = ""
    @wellcoming1 = "Write action (buy, fill, take, remaining, exit): "
    @wellcoming2 = "Write action (buy, fill, take, remaining, exit): "
  end

  def print_amount
    puts "The coffee machine has: "
    puts ("#{@water_status} of water")
    puts ("#{@milk_status} of milk")
    puts ("#{@coffee_beans_status} of coffee beans")
    puts ("#{@disposable_cup_status} of disposable cups")
    puts "$#{@money_status} of money"
  end



  def begin

    while @choice != "exit"
      puts "#{@wellcoming1}"
      @choice = gets.chomp
      # puts "#{@choice}"
      case
      when @choice == "buy"
        puts "What do you want to buy? 1 - espresso, 2 - latte, 3 - cappuccino, back - to main menu: "
        @wellcoming1 = ""
      when @choice == "back"
        puts "What do you want to buy? 1 - espresso, 2 - latte, 3 - cappuccino, back - to main menu: "

      when @choice == "1"
        if @water_status < 250
          puts "Sorry, not enough water!"
          puts "#{@wellcoming2}"
        elsif @coffee_beans_status < 16
          puts "Sorry, not enough coffee!"
          puts "#{@wellcoming2}"
        elsif @disposable_cup_status < 1
          puts "Sorry, not enough cups!"
          puts "#{@wellcoming2}"
        else
          @water_status -= 250
          @coffee_beans_status -= 16
          @disposable_cup_status -= 1
          @money_status += 4
          puts "I have enough resources, making you a coffee!"
          puts "Your espresso is ready"
          puts "Write action (buy, fill, take, remaining, exit): "
          print_amount
        end

      end
    end

  end

end

game = CoffeeMachine.new
game.print_amount
game.begin
