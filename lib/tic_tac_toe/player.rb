 # class for the two players in game
class Player
  attr_reader :color, :name
  def initialize(input)
    @color = input.fetch(:color)
    @name = input.fetch(:name)
  end
end