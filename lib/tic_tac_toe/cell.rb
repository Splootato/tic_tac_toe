# frozen_string_literal: true

module TicTacToe
  # Cell creation
  class Cell
    attr_accessor :value
    def initialize(value = '')
      @value = value
    end
  end
end
