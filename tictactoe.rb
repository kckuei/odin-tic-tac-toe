class Game
  def initialize
    @players
    @board
  end

  def add_player(player)
    @players << player
  end

  def initialize_board; end

  def self.check_winner; end
end

class Player
  attr_accessor :name

  def initialize(name = 'unknown')
    @name = name
    @wins = 0
    @history = {}
  end

  def new_name(name)
    self.name = name
  end
end
