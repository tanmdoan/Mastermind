require 'pry'
class SequenceMatcher
  attr_reader :guess, :answer
  def initialize(guess, answer)
    @answer = answer.chars
    @guess  = guess.chars
  end

  def same
    guess == answer
    # will return true if the sequence objects are the same
  end

  def count_in_correct_spots
    correct_spots = 0
    guess.each_with_index do |char, i|
      correct_spots += 1 if char == answer[i]
    end
    correct_spots
  end

  def count_correct_letters
    count = 0
    guess.each do |letter|
      if answer.include?(letter)
        count += 1
        answer.slice!(answer.index(letter))
      end
    end
    count
    # guess.chars.select.with_index {|char, i| char == answer.chars(i)}.length
  end

  def compare
    [same?, diff, count_correct_letters]
    # this returns an array with a boolean that tells whether the guess was right
    # a count of how many spots were correct
    # and a count of how many letters were correct
    # you can use it like this in the game class:
    # comparison = SequenceMatcher.compare(guess, answer)
    # return "You guessed correctly!" if comparison[0]
    # "You guessed #{SequenceMatcher.comparison[2]} correct letters. #{comparison[1]}
    # of them were in the right spot."
  end
end
