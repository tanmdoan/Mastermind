class Game
  def initialize
    # class Game
    #   def initialize
    #     guess = GuessValidator.new
    #     answer = SequenceGenerator.new
    #     matcher = SequenceMatcher.new(guess, answer)
    #   end
    # end
  end

  def run
    @sequence = SequenceGenerator.new(4).generate
  end

  def comparison
    result = SequenceMatcher.new(guess, answer).compare
    return "You guessed correctly!" if compare[0]
    else
      "You guessed #{result.compare[2]} correct letters. #{result.compare[1]} of them were in the right spot."
  end
end
