require "./lib/application"

class Game
  attr_reader :command, :answer, :guesses, :validator
  def initialize
    @command = ""
    @answer  = SequenceGenerator.new(4).generate
    @guesses = []
  end

  def calculate_time(t1, t2)
    time = t2 - t1
    minutes, seconds = time.divmod(60)
    puts "in #{minutes} minutes and #{seconds.to_i} to beat the game."
  end

  def play
    puts "Roll in the guesses!!"
    puts "secretcode = " + answer.code
      initial_time = Time.new
    until command == ("q")
      print "Enter your guess: "
      @command = gets.chomp.downcase
      guess    = Guess.new(@command)
      guesses << guess
      validator = GuessValidator.new(guess)
      matcher = SequenceMatcher.new(guess.sequence, answer.code)
        if matcher.same
        end_time = Time.new
        puts "Woot, you win!!!\n It took you #{@guesses.count} guess(es)"
        calculate_time(initial_time, end_time)
        break
        elsif  validator.valid?
        correct_spots = matcher.count_in_correct_spots
        correct_letters = matcher.count_correct_letters
        puts "You have #{correct_spots} letter(s) in the right spot, out of the #{correct_letters} correct.
        You've guessed #{guesses.count} times."
        elsif @command == "q"
          puts "Latez!"
          break
        elsif validator.short?
        puts "Sorry your guess is too short!"
        else
        puts "Your guess is too long!"
      end
    end
  end
end
