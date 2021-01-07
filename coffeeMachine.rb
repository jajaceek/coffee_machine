class CoffeeMachine

  def initialize
    @water_status = 400
    @milk_status = 540;
    @coffee_beans_status = 120;
    @disposable_cup_status = 9;
    @money_status = 550;
    @choice = ""
    @wellcoming1 = "Napisz co chcesz zrobić (zakup, dodanie, kasa, status, exit): "
    @wellcoming2 = "Napisz co chcesz zrobić (zakup, dodanie, kasa, status, exit): "
    @fill = 0
  end

  def print_amount
    puts "Status automatu kawowego: "
    puts ("#{@water_status} ml wody")
    puts ("#{@milk_status} ml mleka")
    puts ("#{@coffee_beans_status} g ziaren kawy")
    puts ("#{@disposable_cup_status} szt. kubków")
    puts "#{@money_status} PLN pieniędzy"
  end



  def begin

    while @choice != "exit"
      puts "#{@wellcoming1}"
      @choice = gets.chomp
      # puts "#{@choice}"
      case
      when @choice == "zakup"
        puts "Wybierz kawę: 1 - espresso, 2 - latte, 3 - cappuccino, powrót - powrót do głównego menu: "
        @wellcoming1 = ""
      when @choice == "powrót"
          puts "#{@wellcoming2}"

        # zakup kawy
      when @choice == "1"
        if @water_status < 250
          puts "Przepraszam, brak wody!"
          puts "#{@wellcoming2}"
        elsif @coffee_beans_status < 16
          puts "Przepraszam, brak ziaren kawy!"
          puts "#{@wellcoming2}"
        elsif @disposable_cup_status < 1
          puts "Przepraszam, brak kubków!"
          puts "#{@wellcoming2}"
        else
          @water_status -= 250
          @coffee_beans_status -= 16
          @disposable_cup_status -= 1
          @money_status += 4
          puts "Automat kawowy gotowy. Przygotowuję kawę!"
          puts "Twoje espresso jest gotowe"
          puts "Zasoby automatu zostały zaktualizowane."
          puts "#{@wellcoming2}"
          # print_amount
        end

      when @choice == "2"
        if @water_status < 350
          puts "Przepraszam, brak wody!""
          puts "#{@wellcoming2}"
        elsif @milk_status < 75
          puts "Przepraszam, brak mleka!"
          puts "#{@wellcoming2}"
        elsif @coffee_beans_status < 20
          puts "Przepraszam, brak ziaren kawy!"
          puts "#{@wellcoming2}"
        elsif @disposable_cup_status < 1
          puts "Przepraszam, brak kubków!"
          puts "#{@wellcoming2}"
        else
          @water_status -= 350
          @milk_status -= 75
          @coffee_beans_status -= 20
          @disposable_cup_status -= 1
          @money_status += 7
          puts "Automat kawowy gotowy. Przygotowuję kawę!"
          puts "Twoje latte jest gotowe."
          puts "Zasoby automatu zostały zaktualizowane."
          puts "#{@wellcoming2}"
          # print_amount
        end

      when @choice == "3"
        if @water_status < 200
          puts "Sorry, not enough water!"
          puts "#{@wellcoming2}"
        elsif @milk_status < 100
          puts puts "Przepraszam, brak mleka!"
          puts "#{@wellcoming2}"
        elsif @coffee_beans_status < 12
          puts "Przepraszam, brak ziaren kawy!"
          puts "#{@wellcoming2}"
        elsif @disposable_cup_status < 1
          puts "Przepraszam, brak kubków!"
          puts "#{@wellcoming2}"
        else
          @water_status -= 200
          @milk_status -= 100
          @coffee_beans_status -= 12
          @disposable_cup_status -= 1
          @money_status += 6
          puts "Automat kawowy gotowy. Przygotowuję kawę!"
          puts "Twoje cappuccino jest gotowe."
          puts "Zasoby automatu zostały zaktualizowane."
          puts "#{@wellcoming2}"
          # print_amount
        end

        # uzupełnianie zasobów
      when @choice == "dodanie"
        puts "Napisz jak dużo ml wody chcesz dodać: "
        @fill = gets.chomp.to_i
        # puts "#{@water_status}"
        @water_status += @fill
        puts "Dodano #{@fill}ml wody. Teraz jest #{@water_status} ml wody."
        puts "Napisz jak dużo ml mleka chcesz dodać: "
        @fill = gets.chomp.to_i
        # puts "#{@milk_status}"
        @milk_status += @fill
        puts "Dodano #{@fill}ml mleka. Teraz jest #{@milk_status} ml mleka."
        puts "Napisz jak dużo gram ziaren kawy chcesz dodać: "
        @fill = gets.chomp.to_i
        # puts "#{@coffee_beans_status}"
        @coffee_beans_status += @fill
        puts "Dodano #{@fill} g ziaren kawy. Teraz jest #{@coffee_beans_status} g ziaren kawy."
        puts "Napisz jak dużo sztuk kubków chcesz dodać: "
        @fill = gets.chomp.to_i
        # puts "#{@disposable_cup_status}"
        @disposable_cup_status += @fill
        puts "Dodano #{@fill}szt. kubków. Teraz jest #{@disposable_cup_status} szt. kubków."
        puts "#{@wellcoming2}"


      when @choice == "kasa"
        puts "#{@money_status}"
        puts "Wpłacam #{@money_status} PLN"
        @money_status = 0
        puts "#{@money_status}"
        puts "#{@wellcoming2}"

      when @choice == "status"
        print_amount
        puts "#{@wellcoming2}"



      else
        if @choice == "exit"
        else
        puts "Nie do końca zrozumiałem. Możesz powtórzyć"
      end
      end
    end
  end
end

game = CoffeeMachine.new
# game.print_amount
puts "Witam w automacie kasowym."
game.begin
