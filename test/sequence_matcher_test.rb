require_relative './test_helper'
require './lib/sequence_matcher'

class SequenceMatcherTest < Minitest::Test
  def test_it_knows_they_match
    guess  = %w[r b g y]
    answer = %w[r b g y]
    sequence_matcher = SequenceMatcher.new(guess, answer)

    assert sequence_matcher.same?
  end

  def test_it_knows_they_are_different
    guess  = %w[r b g y]
    answer = %w[g y b r]
    sequence_matcher = SequenceMatcher.new(guess, answer)

    refute sequence_matcher.diff
  end

  def test_it_counts_number_letters_correct
    skip
    guess  = %w[r r b y]
    answer = %w[r r b c]
    sequence_matcher = SequenceMatcher.new(guess,answer)

    assert_equal 3, sequence_matcher.length
  end
end
