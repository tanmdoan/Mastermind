require "./lib/guess_validator"
require "./lib/guess"
require "./lib/sequence_generator"
require "./lib/sequence_matcher"

class CLI
  attr_reader :command, :answer

  def initialize
    @command = ''
    @answer  = SequenceGenerator.new(4).generate
  end

  def start
    puts "Welcome to Mastermind"
    until command == "q"
      print "Enter your guess: "
      @command = gets.chomp
      guess    = Guess.new(@command)
      validator = GuessValidator.new(guess)
      if validator.valid?
        matcher = SequenceMatcher.new(guess.sequence, answer.code)
        diff = matcher.diff
        correct_letters = matcher.count_correct_letters
        puts "You have #{diff} letter(s) in the right spot, out of the #{correct_letters} correct."
      else
        puts "That is not a valid guess. Try again."
      end

    end
    puts "Thanks for playing!"
  end
end

CLI.new.start
