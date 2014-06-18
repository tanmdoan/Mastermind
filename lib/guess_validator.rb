require './lib/guess'

class GuessValidator
  attr_reader :guess

  def initialize(guess)
    @guess = guess
  end

  def valid
    guess.chars.count == 4
  end


  def short?
    if guess.chars.count < 4
      puts "Sorry your guess is too short!"
    else
      guess.valid
    end
  end

  def too_long
    if guess.chars.count > 4
      puts "Sorry your guess is too long!"
    else
      guess.valid
    end
  end
end
