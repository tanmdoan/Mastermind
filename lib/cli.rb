require "./lib/game"

class CLI
  attr_reader :command, :answer, :game

  def initialize
    @game = Game.new
    @command = ""
  end

  def main_menu
    puts "*****''{{{AlmostMastermind}}}''*****"
    puts "enter p to start jammin, i to learn how to play, and q if you're too
    pansy to try and want to quit anytime during the game"
      print "Option: "
    loop do
      command = gets.chomp
      case command
      when "q"
        puts "Goodbye!"
        break
      when "i"
        instructions
      when "p"
        start
      else
        "Sorry #{command} is not an option."
      end
    end
  end

  def start
    game.play
  end

  def instructions
    puts "Mastermind instructions:\n"
    puts "A generated code of (r)ed, (g)reen, (b)lue, and (y)ellow has been set.\n"
    puts "The object of the game is to guess the four codes with the following conditions:\n"
    puts "1. At default level the guess is exactly four characters"
    puts "2. The guess may include repeats in any random order"
    puts "3. Enter just the beginning letters only, example: rgby"
  end
end

# CLI.new.main_menu
