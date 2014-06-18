require './test/test_helper'
require './lib/guess_validator'


class GuessValidatorTest < Minitest::Test
  # def test_is_there_a_guess
  #   guess = Guess.new("rrby")
  #
  #   assert_equal "rrby", guess.input
  # end
  # need to go to guess class

  def test_guess_validator_gets_guess
    skip
    guess = Guess.new("rrrr")
    validator = GuessValidator.new(guess)

    assert_equal
  end

  def test_guess_is_valid
    guess = Guess.new("yyyy")
    validator = GuessValidator.new(guess)

    assert validatory.valid
  end

  def test_guess_is_short?
    skip
  end

  def test_guess_is_too_long
    skip
  end
end
