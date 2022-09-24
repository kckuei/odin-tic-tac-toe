# frozen_string_literal: false

require_relative './lib/utilities'
require_relative './lib/intro_screen'
require_relative './lib/board'
require_relative './lib/player'
require_relative './lib/game'

game = Game.new
game.main
