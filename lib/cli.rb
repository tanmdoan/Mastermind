require "./lib/guess_validator"
require "./lib/guess"
require "./lib/sequence_matcher"
require "./lib/sequence_generator"
require "./lib/game"

class CLI
  attr_reader :command, :answer, :game

  def initialize
    @game = Game.new
    @command = ""
  end

  def main_menu
    puts "*****''{{{Mastermind}}}''*****"
    puts "enter p to start jammin, i to learn how to play, and q if you're too
    pansy to try"
      print "Option: "
    loop do
      command = gets.chomp
      case command
      when "q"
        puts "Goodbye!"
        break
      when "i"
        instruction
      when "p"
        start
      else
        "Sorry I don't recognize your #{command}"
      end
    end
  end

  def start
    game.play
  end
end

CLI.new.main_menu
