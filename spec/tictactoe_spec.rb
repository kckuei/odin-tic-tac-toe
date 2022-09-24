# frozen_string_literal: true

require_relative '../lib/utilities'
require_relative '../lib/intro_screen'
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game'

# Tests module - testing functionality of the board functions

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
    context 'when we have a winner' do
      xit 'returns true' do
      end
    end
    context 'when we do not have a winner' do
      xit 'returns false' do
      end
    end
  end
end

# check board is updated/changes value
# check correct winner prediction
# check puts to screens
# check user input valid, etc.
