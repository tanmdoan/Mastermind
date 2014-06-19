require_relative './test_helper'
require './lib/sequence_matcher'

class SequenceMatcherTest < Minitest::Test
  def test_it_knows_they_match
    guess  = "rbgy"
    answer = "rbgy"
    sequence_matcher = SequenceMatcher.new(guess, answer)

    assert sequence_matcher.same
  end

  def test_it_knows_they_are_different
    guess  = "rgby"
    answer = "rbyg"
    sequence_matcher = SequenceMatcher.new(guess, answer)

    refute sequence_matcher.same
  end

  def test_knows_how_many_correct_spots
    guess  = "rrbb"
    answer = "rybg"
    sequence_matcher = SequenceMatcher.new(guess, answer)

    assert_equal 2, sequence_matcher.count_in_correct_spots
  end

  def test_knows_how_many_correct_spots_with_diff_spots
    guess  = "rryy"
    answer = "rbgr"
    sequence_matcher = SequenceMatcher.new(guess,answer)

    assert_equal 1, sequence_matcher.count_in_correct_spots
  end

  def test_it_counts_number_letters_correct
    guess  = "rryy"
    answer = "rryb"
    sequence_matcher = SequenceMatcher.new(guess,answer)

    assert_equal 3, sequence_matcher.count_correct_letters
  end
end
