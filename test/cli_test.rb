require_relative './test_helper'
require 'cli'

class CLITest < MiniTest::Test

  def call(input)
    stdin = StringIO.new input + "\n"
    CLI.new(stdin, stdout, game).call
  end

  def test_prints_intro_first
    call("")
    prints_intro = stdout.string.start_with? CLI.intro
    assert prints_intro, 'Did not print the intro'
  end

  def test_plays_game_when_guess_is_p
    game.expect(:call, nil)
    call("p\n")
    game.verify
  end

  def test_prints_instructions_when_guess_is_i
    call "i\n"
    assert_includes stdout.string, CLI.instructions
  end

  def test_does_nothing_when_guess_is_q
    call "q\n"
    # ideally I'd also assert that it did not call the game
    refute_includes stdout.string, CLI.instructions
  end

  # probably eventually add
  # test for when guess is something else
end
