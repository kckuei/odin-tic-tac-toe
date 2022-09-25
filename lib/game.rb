# frozen_string_literal: false

# Game class
class Game
  attr_writer :grid_size, :player1, :player2, :board, :mapping, :player_now

  include Utilities
  include IntroScreen
  include Board

  def initialize(grid_size = 3)
    @grid_size = grid_size
    @player1 = Player.new('player1', 'o')
    @player2 = Player.new('player2', 'x')
    @board = nil
    @mapping = nil
    @player_now = @player1
  end

  def define_grid_size(grid_size = 0)
    cls
    puts GRID
    until [3, 5, 7, 9].include?(grid_size.to_i)
      puts "\nSelect a grid size (3, 5, 7, 9)."
      grid_size = gets.chomp
    end
    @grid_size = grid_size
  end

  def define_players
    cls
    puts "\nEnter champion 1 name (o):"
    @player1.name = gets.chomp
    puts "\nEnter champion 2 name (x):"
    @player2.name = gets.chomp
    puts "\n#{@player1.name} (o) and #{@player2.name} (x) will dual to the fate " <<
         "in a game of #{@grid_size}x#{@grid_size} tic-tac-toe."
    puts '...prepare for battle!!! >:D'
    gets
  end

  def define_board
    @mapping = make_mapping(@grid_size.to_i)
    @board = initialize_board(@grid_size.to_i)
  end

  def declare_tie
    fancy_draw
    puts "It's a tie! #{@player1.name} and #{@player2.name} were equally matched!"
  end

  def declare_winner
    winner_avatar = check_winner(@player1.avatar, @board) ? @player1.avatar : @player2.avatar
    winner = winner_avatar == @player1.avatar ? @player1.name : @player2.name
    fancy_gameover
    draw_board(@board, true)
    puts "#{winner} (#{winner_avatar}) is the tic-tac-toe champion!\n"
  end

  def declare_gameover
    check_tie(@board) ? declare_tie : declare_winner
    puts "\nPress any key to start a new game."
    gets
  end

  def switch_player
    @player_now = @player_now.id == @player1.id ? @player2 : @player1
  end

  def okay_to_move(coords)
    coords && valid_move(coords, @board)
  end

  def player_input
    cls
    puts "#{@player_now.name}\'s (#{@player_now.avatar}) move! Enter a grid id."
    input_id = gets.to_i
    @mapping[input_id]
  end

  def update_draw_board(coords)
    @board = update_board(coords, @player_now.avatar, @board)
    draw_board(@board)
    draw_board(@board, true)
  end

  def game_loop
    loop do
      coords = player_input
      if okay_to_move(coords)
        update_draw_board(coords)
        switch_player
        break
      end
      puts 'Invalid input'
      draw_board(@board)
    end
  end

  def play_game
    draw_board(@board)
    game_loop until check_winner(@player1.avatar, @board) || check_winner(@player2.avatar, @board) || check_tie(@board)
    declare_gameover
  end

  def main
    fancy_intro
    define_grid_size
    define_players
    define_board
    play_game
    main
  end
end
