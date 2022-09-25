# frozen_string_literal: true

require_relative '../lib/utilities'
require_relative '../lib/intro_screen'
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game'

# Tests module for testing critical functionality of the game, including, but not limited to:
 
# Correct generation of game board
# Correct declaration of winner or identification of draw condition

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

  describe '#initialize_board' do
    subject(:game) { described_class.new }

    context 'when initialize a board of size 3' do
      it 'it returns a 3x3 board' do
        board = game.initialize_board(3)
        rows = board.length
        cols = board[0].length
        elements = board.flatten.length
        valid_board = rows == cols && elements == 9
        expect(valid_board).to be true
      end
    end

    context 'when initialize a board of size 9' do
      it 'it returns a 9x9 board' do
        board = game.initialize_board(9)
        rows = board.length
        cols = board[0].length
        elements = board.flatten.length
        valid_board = rows == cols && elements == 81
        expect(valid_board).to be true
      end
    end
  end

  describe '#check_winner' do
    subject(:game) { described_class.new }

    context 'when there is a winner' do
      it 'returns true for horizontal win condition on grid size 3' do
        # Arrange
        board = [
          %w[x x x],
          ['', 'o', ''],
          %w[o o x]
        ]
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be true
      end

      it 'returns true for vertical win vertical on grid size 3' do
        # Arrange
        board = [
          ['x', 'o', ''],
          ['x', 'o', ''],
          ['',  'o', '']
        ]
        # Action
        result = game.check_winner('o', board)
        # Assert
        expect(result).to be true
      end

      it 'returns true for diaganol win on grid size 3' do
        # Arrange
        board = [
          ['x', '', 'o'],
          ['', 'o', ''],
          ['o', 'x', '']
        ]
        # Action
        result = game.check_winner('o', board)
        # Assert
        expect(result).to be true
      end

      it 'returns true for opposing diaganol win on grid size 3' do
        # Arrange
        board = [
          ['x', '', 'o'],
          ['', 'x', ''],
          ['o', '', 'x']
        ]
        # Action
        result = game.check_winner('x', board)
        # Assert
        expect(result).to be true
      end

      it 'returns true for horizontal win condition on grid size 9' do
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

      it 'returns true for vertical win condition on grid size 9' do
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

      it 'returns true for diaganol win condition on grid size 9' do
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

      it 'returns true for opposing diaganol win condition on grid size 9' do
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
      it 'returns false for x if o is the winner' do
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

      it 'returns true for o if o is the winner' do
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

  describe '#check_tie' do
    subject(:game) { described_class.new }

    context 'when the game board is full' do
      it 'returns true for a tie' do
        # Arrange
        board = [
          %w[x o x],
          %w[x x o],
          %w[o x o]
        ]
        # Action
        result = game.check_tie(board)
        # Assert
        expect(result).to be true
      end
    end

    context 'when the game board is not yet full' do
      it 'returns false for no tie' do
        # Arrange
        board = [
          ['x', 'o', ''],
          %w[x x o],
          %w[o x o]
        ]
        # Action
        result = game.check_tie(board)
        # Assert
        expect(result).to be false
      end
    end
  end
end
