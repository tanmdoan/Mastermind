class SequenceGenerator
  def initialize(length, pool)
    @length = length
    @pool = pool
  end

  def generate
    code = (0...length).collect{ pool.sample }
    Sequence.new(code)
  end
end
