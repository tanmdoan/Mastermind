class Sequence

  attr_reader :code

  def initialize(code)
    @code = code
  end

  def ==(other)
    code == other.code
  end
end
