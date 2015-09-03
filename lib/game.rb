class Game
  attr_accessor :guess, :prev_guess  # => nil

  def initialize
    @num = rand(1..100)
    @win = false
    @low = false
    @high = false
  end

  def play
    system("clear")

    5.times do

      print "\nGuess a number between 1 - 100 > "
      @guess = gets.chomp.to_i

      check_guess_waste

      check

      check_for_win

      @prev_guess = @guess
    end

    unless @win
    puts "\nThe number was #{@num}, better luck next time."
    end
  end

  def check
    if @guess < @num
      puts "\n#{@guess} is too low"
      @low = true
      @high = false
    elsif @guess > @num
      puts "\n#{@guess} is too high"
      @high = true
      @low = false
    else
      @win = true
    end
  end

  def check_guess_waste
    if @guess == @prev_guess
      msg = "Are you drunk?!"
      `say "#{msg}"`
      puts "\n#{msg}"#"\nAre you drunk?!"
    elsif @low && @guess < @prev_guess
      puts "\nYou are a moron, that is lower still!"
      msg = "You are a moron, that is lower still!"
      `say "#{msg}"`
    elsif @high && @guess > @prev_guess
      puts "\nYou are a moron, that is higher still!"
      msg = "You are a moron, that is higher still!"
      `say "#{msg}"`
    end
  end

  def check_for_win
    if @win
      puts "\nYou guessed it! The number was #{@num}"
      exit
    end
  end

end
