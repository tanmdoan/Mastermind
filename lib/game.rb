class Game
  def initialize
  end

  def run
    sequence_generator = SequenceGenerator.new(4, 'R', 'G','B','Y').generate
  end
end
