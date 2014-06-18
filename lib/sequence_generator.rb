require "./lib/sequence"

class SequenceGenerator
  attr_reader :length, :pool
  def initialize(length, pool = "rrrrbbbbggggyyyy")
    @length = length
    @pool = pool
  end

  def generate
    code = pool.split("").shuffle.join.slice(1..4)
    Sequence.new(code)
  end
end
