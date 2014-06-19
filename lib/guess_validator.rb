require './lib/guess'
require 'pry'
class GuessValidator
  attr_reader :guess

  def initialize(guess)
    @guess = guess
  end
  
  def valid?
    guess.sequence.length == 4
  end

  def short?
    guess.sequence.length < 4
  end

  def long?
    guess.sequence.length > 4
  end
end
