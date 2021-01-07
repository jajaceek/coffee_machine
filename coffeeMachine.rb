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
    @fill = 0
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
          puts "#{@wellcoming2}"

        # zakup kawy
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

      when @choice == "2"
        if @water_status < 350
          puts "Sorry, not enough water!"
          puts "#{@wellcoming2}"
        elsif @milk_status < 75
          puts "Sorry, not enough milk!"
          puts "#{@wellcoming2}"
        elsif @coffee_beans_status < 20
          puts "Sorry, not enough coffee!"
          puts "#{@wellcoming2}"
        elsif @disposable_cup_status < 1
          puts "Sorry, not enough cups!"
          puts "#{@wellcoming2}"
        else
          @water_status -= 350
          @milk_status -= 75
          @coffee_beans_status -= 20
          @disposable_cup_status -= 1
          @money_status += 7
          puts "I have enough resources, making you a coffee!"
          puts "Your latte is ready"
          puts "Write action (buy, fill, take, remaining, exit): "
          print_amount
        end

      when @choice == "3"
        if @water_status < 200
          puts "Sorry, not enough water!"
          puts "#{@wellcoming2}"
        elsif @milk_status < 100
          puts "Sorry, not enough milk!"
          puts "#{@wellcoming2}"
        elsif @coffee_beans_status < 12
          puts "Sorry, not enough coffee!"
          puts "#{@wellcoming2}"
        elsif @disposable_cup_status < 1
          puts "Sorry, not enough cups!"
          puts "#{@wellcoming2}"
        else
          @water_status -= 200
          @milk_status -= 100
          @coffee_beans_status -= 12
          @disposable_cup_status -= 1
          @money_status += 6
          puts "I have enough resources, making you a coffee!"
          puts "Your cappuccino is ready"
          puts "Write action (buy, fill, take, remaining, exit): "
          print_amount
        end

        # uzupełnianie zasobów
      when @choice == "fill"
        puts "Write how many ml of water do you want to add: "
        @fill = gets.chomp.to_i
        puts "#{@water_status}"
        @water_status += @fill
        puts "#{@water_status}"
        puts "Write how many ml of milk do you want to add: "
        @fill = gets.chomp.to_i
        puts "#{@milk_status}"
        @milk_status += @fill
        puts "#{@milk_status}"
        puts "Write how many grams of coffee beans do you want to add: "
        @fill = gets.chomp.to_i
        puts "#{@coffee_beans_status}"
        @coffee_beans_status += @fill
        puts "#{@coffee_beans_status}"
        puts "Write how many disposable cups of coffee do you want to add: "
        @fill = gets.chomp.to_i
        puts "#{@disposable_cup_status}"
        @disposable_cup_status += @fill
        puts "#{@disposable_cup_status}"

      when @choice == "take"
        puts "#{@money_status}"
        puts "I gave you $#{@money_status}"
        @money_status = 0
        puts "#{@money_status}"

      when @choice == "remaining"
        print_amount
      end
    end

  end

end

game = CoffeeMachine.new
game.print_amount
game.begin
