require './test/test_helper'
require './lib/guess_validator'


class GuessValidatorTest < Minitest::Test
  def test_guess_validator_gets_guess
    guess     = Guess.new("rrrr")
    validator = GuessValidator.new(guess)

    assert_equal guess, validator.guess
  end

  def test_guess_is_valid?
    guess     = Guess.new("yyyy")
    validator = GuessValidator.new(guess)

    assert validator.valid?
  end

  def test_guess_is_short?
    guess     = Guess.new("yyy")
    validator = GuessValidator.new(guess)

    assert validator.short?
  end

  def test_guess_is_too_long?
    guess     = Guess.new("yyyyy")
    validator = GuessValidator.new(guess)

    assert validator.long?
  end
end
