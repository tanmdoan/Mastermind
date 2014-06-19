require './lib/guess'
require 'pry'
class GuessValidator
  attr_reader :guess

  def initialize(guess)
    @guess = guess
  end

  # def allowed_sequence
  #   count = 0
  #   @allowed_sequence = %w[r g y b]
  #   guess.chars.each do |letter|
  #     if allowed_sequence.include?(letter)
  #       count += 1
  #   end
  # end
  # end

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
