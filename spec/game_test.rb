require 'minitest/autorun'         # => true
require 'minitest/pride'           # => true
require_relative '../lib/game.rb'  # => true

class GameTest < MiniTest::Test
  def test_check_low
    game = Game.new              # => #<Game:0x007fd4b21e2920 @num=73, @win=false, @low=false, @high=false>

    @guess = 1     # => 1
    @num = 50      # => 50
    @low = false   # => false
    @high = false  # => false

    assert_equal(@low == false, game.check)
  end
end


# >> Run options: --seed 7916
# >>
# >> # Running:
# >>
# >> E
# >>
# >> Finished in 0.001001s, 998.5561 runs/s, 0.0000 assertions/s.
# >>
# >>   1) Error:
# >> GameTest#test_check_low:
# >> NoMethodError: undefined method `<' for nil:NilClass
# >>     /Users/Britton/theironyard/programs/guessing_game/lib/game.rb:36:in `check'
# >>     /Users/Britton/theironyard/programs/guessing_game/spec/game_test.rb:14:in `test_check_low'
# >>
# >> 1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
