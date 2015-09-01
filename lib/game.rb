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

      if @guess == @prev_guess
        puts "\nAre you drunk?!"
      elsif @low && @guess < @prev_guess
        puts "\nYou are a moron, that is lower still!"
      elsif @high && @guess > @prev_guess
        puts "\nYou are a moron, that is higher still!"
      end

      check

      if @win
        puts "\nYou guessed it! The number was #{@num}"
        break
      end
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

end
