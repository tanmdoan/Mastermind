class Sequence

  attr_reader :code

  def initialize(code)
    @code = code
  end

  def ==(other)
    # this makes it so you can test whether
    # two of these objects by saying
    # assert Sequence.new('abcd') == Sequence.new('abcd')
    # and refute Sequence.new('abcd') == Sequence.new('abcde')
    code == other.code
  end
end
