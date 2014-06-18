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
    puts "Your options are rgby"
    until command == ("q" || matcher.same)
      print "Enter your guess: "
      @command = gets.chomp.downcase
      guess    = Guess.new(@command)
      validator = GuessValidator.new(guess)
      matcher = SequenceMatcher.new(guess.sequence, answer.code)
        if matcher.same
        puts "Woot, you win!!!"
        elsif  validator.valid?
        correct_spots = matcher.count_in_correct_spots
        correct_letters = matcher.count_correct_letters
        puts "You have #{correct_spots} letter(s) in the right spot, out of the #{correct_letters} correct."
        elsif validator.short?
        puts "Sorry your guess is too short!"
        else
        puts "Your guess is too long!"
      end
    end
    puts "Thanks for playing!"
  end
end

CLI.new.start
