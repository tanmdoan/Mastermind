class SequenceMatcher
  attr_reader :guess, :answer
  def initialize(guess, answer)
    @answer = answer.chars
    @guess  = guess.chars
  end

  def same
    guess == answer
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
  end
end
