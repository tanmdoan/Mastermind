class SequenceMatcher
  attr_reader :guess, :answer
  def initialize(guess, answer)
    @answer = answer
    @guess  = guess
  end

  def same?
    guess == answer
    # will return true if the sequence objects are the same
  end

  def diff
    correct_spots = 0
    guess.char.each_with_index do |char, i|
      if char == answer.char[i]
        correct_spots += 1
      end
    end
    correct_spots
  end

  def count_correct_letters
    (guess.chars.sort - answer.chars.sort).length
  end

  def compare
    [same?, diff, count_correct_letters]
    # this returns an array with a boolean that tells whether the guess was right
    # a count of how many spots were correct
    # and a count of how many letters were correct
    # you can use it like this in the game class:
    # comparison = SequenceMatcher.compare(guess, answer)
    # return "You guessed correctly!" if comparison[0]
    # "You guessed #{SequenceMatcher.compare[2]} correct letters. #{compare[1]}
    # of them were in the right spot."
  end
end
