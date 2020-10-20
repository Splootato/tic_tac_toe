# frozen_string_literal: true

module TicTacToe
  # Cell creation
  class Cell
    attr_accessor :value
    def initialize(value = '')
      @value = value
    end
  end

  # class for the two players in game
  class Player
    attr_reader :color, :name
    def initialize(input)
      @color = input.fetch(:color)
      @name = input.fetch(:name)
    end
  end

  # Create the playing area
  class Board
    attr_reader :grid
    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    private

    # Creates the default grid size to be 3 x 3
    def default_grid
      Array.new(3) { Array.new(3) { Cell.new } }
    end
  end

  def get_cell(x, y)
    grid[y][x]
  end

  def set_cell(x,y, value)
    get_cell(x, y).value = value
  end

  def game_over
    return :winner if winner?
    return :draw if draw?

    false
  end
end
