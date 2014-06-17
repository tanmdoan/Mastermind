gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sequence.rb'

class SequenceTest < Minitest::Test
  def test_sequence_exists
    code = Sequence.new([])

  end
end
