require 'minitest/autorun'         # => true
require 'minitest/pride'           # => true
require_relative '../lib/game.rb'  # => true

class GameTest < MiniTest::Test
  def test_check_low
    game = Game.new              # => #<Game:0x007ff8bd0f6ff0 @num=36, @win=false, @low=false, @high=false>

    @guess = 1     # => 1
    @num = 50      # => 50
    @low = false   # => false
    @high = false  # => false

    assert_equal(@low = false, game.check)
  end
end


# >> Run options: --seed 41666
# >>
# >> # Running:
# >>
# >> E
# >>
# >> Finished in 0.001089s, 917.9061 runs/s, 0.0000 assertions/s.
# >>
# >>   1) Error:
# >> GameTest#test_check_low:
# >> NoMethodError: undefined method `<' for nil:NilClass
# >>     /Users/Britton/theironyard/programs/guessing_game/lib/game.rb:43:in `check'
# >>     /Users/Britton/theironyard/programs/guessing_game/spec/game_test.rb:14:in `test_check_low'
# >>
# >> 1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
