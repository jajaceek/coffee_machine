class CoffeeMachine

  def initialize
    @water_status = 400
    @milk_status = 540;
    @coffee_beans_status = 120;
    @disposable_cup_status = 9;
    @money_status = 550;
  end

  def print_amount
    puts "The coffee machine has: "
    puts ("#{@water_status} of water")
    puts ("#{@milk_status} of milk")
    puts ("#{@coffee_beans_status} of coffee beans")
    puts ("#{@disposable_cup_status} of disposable cups")
    puts "$ #{@money_status} of money"
  end


  def begin

  end

end

game = CoffeeMachine.new
game.print_amount
game.begin
