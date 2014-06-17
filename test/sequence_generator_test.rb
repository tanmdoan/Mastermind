require_relative './test_helper'
require './lib/sequence_generator'

class SequenceGeneratorTest < Minitest::Test
  def test_creates_a_sequence_with_four_letters
    sequence = SequenceGenerator.new(4, ['r','g','y','b'])
    sequence.generate

    assert_equal 4, sequence.length
  end
end
