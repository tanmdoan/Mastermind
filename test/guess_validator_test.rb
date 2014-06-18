require './test/test_helper'
require './lib/guess_validator'


class GuessValidatorTest < Minitest::Test
  def test_input_short?
    guess = Guess.new('aaa')

    assert guess.short? 
  end
end
