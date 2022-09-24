# frozen_string_literal: true

require_relative '../lib/utilities'
require_relative '../lib/intro_screen'
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game'

# Tests module - testing functionality of the board functions

# Should
# check board is updated/changes value
# check correct winner prediction
# check puts to screens
# check user input valid, etc.

describe Game do
  describe '#define_grid_size' do
    subject(:game) { described_class.new }

    context 'when given a grid size' do
      before do
        allow(game).to receive(:puts)
      end

      it 'sets the grid size to 9' do
        game.define_grid_size(9)
        expect(game.instance_variable_get(:@grid_size)).to eq(9)
      end

      it 'sets the grid size to 5' do
        game.define_grid_size(5)
        expect(game.instance_variable_get(:@grid_size)).to eq(5)
      end

      it 'sets the grid size to 3' do
        game.define_grid_size(3)
        expect(game.instance_variable_get(:@grid_size)).to eq(3)
      end
    end
  end

  describe '#check_winner' do
    subject(:game) { described_class.new }

    context 'when have winner' do
      it 'returns true for horizontal' do
        # Arrange
        grid_size = 9
        board = game.initialize_board(grid_size)
        mapping = game.make_mapping(grid_size)
        (1..grid_size).to_a.each do |i|
          coords = mapping[i]
          game.update_board(coords, 'x', board)
        end
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be true
      end

      it 'returns true vertical' do
        # Arrange
        grid_size = 9
        board = game.initialize_board(grid_size)
        mapping = game.make_mapping(grid_size)
        (1..73).step(grid_size).to_a.each do |i|
          coords = mapping[i]
          game.update_board(coords, 'x', board)
        end
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be true
      end

      it 'returns true diaganol 1' do
        # Arrange
        grid_size = 9
        board = game.initialize_board(grid_size)
        mapping = game.make_mapping(grid_size)
        (1..81).step(grid_size + 1).to_a.each do |i|
          coords = mapping[i]
          game.update_board(coords, 'x', board)
        end
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be true
      end

      it 'returns true diaganol 2' do
        # Arrange
        grid_size = 9
        board = game.initialize_board(grid_size)
        mapping = game.make_mapping(grid_size)
        (9..73).step(grid_size - 1).to_a.each do |i|
          coords = mapping[i]
          game.update_board(coords, 'x', board)
        end
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be true
      end
    end

    context 'when no winner' do
      it 'returns false' do
        # Arrange
        grid_size = 9
        board = game.initialize_board(grid_size)
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be false
      end
    end

    context 'when checking x and o is the winner' do
      it 'returns false for x' do
        # Arrange
        grid_size = 9
        board = game.initialize_board(grid_size)
        mapping = game.make_mapping(grid_size)
        (1..grid_size).to_a.each do |i|
          coords = mapping[i]
          game.update_board(coords, 'o', board)
        end
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be false
      end

      it 'returns true for o' do
        # Arrange
        grid_size = 9
        board = game.initialize_board(grid_size)
        mapping = game.make_mapping(grid_size)
        (1..grid_size).to_a.each do |i|
          coords = mapping[i]
          game.update_board(coords, 'o', board)
        end
        # Action
        result = game.check_winner('o', board)
        # Assert
        expect(result).to be true
      end
    end
  end
end
