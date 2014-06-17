require 'game'

class CLI
  def self.intro
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.instructions
    'instructions'
  end

  def initialize(stdin, stdout, game)
    @stdin  = stdin
    @stdout = stdout
    @game   = game
  end

  def call
    @stdout.puts CLI.intro
    guess = @stdin.gets.chomp

    case guess
    when 'p'
      @game.call
    when 'i'
      @stdout.puts CLI.instructions
    when 'q'
      # no op
    end
  end
end
