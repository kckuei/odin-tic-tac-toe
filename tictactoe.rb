# frozen_string_literal: false

# Utilities module - collection of utility functions
module Utilities
  def cls
    system('cls')
  end
end

# IntroScreen module - for fancy intro and board preview
module IntroScreen
  ODIN = "
                 AN
       _ _                      _         _   _
 ___ _| |_|___    ___ ___ ___ _| |_ _ ___| |_|_|___ ___ ___
| . | . | |   |  | . |  _| . | . | | |  _|  _| | . |   |_ -|
|___|___|_|_|_|  |  _|_| |___|___|___|___|_| |_|___|_|_|___|
                 |_|                                        \n\n
                            PRESENTS
".freeze

  TIC = "
/$$$$$$$$ /$$             /$$$$$$$$                     /$$$$$$$$
|__  $$__/|__/            |__  $$__/                    |__  $$__/
  | $$    /$$  /$$$$$$$     | $$  /$$$$$$   /$$$$$$$      | $$  /$$$$$$   /$$$$$$
  | $$   | $$ /$$_____/     | $$ |____  $$ /$$_____/      | $$ /$$__  $$ /$$__  $$
  | $$   | $$| $$           | $$  /$$$$$$$| $$            | $$| $$  \ $$| $$$$$$$$
  | $$   | $$| $$           | $$ /$$__  $$| $$            | $$| $$  | $$| $$_____/
  | $$   | $$|  $$$$$$$     | $$|  $$$$$$$|  $$$$$$$      | $$|  $$$$$$/|  $$$$$$$
  |__/   |__/ \\_______/     |__/ \\_______/ \\_______/      |__/ \______/  \\_______/\n\n
".freeze

  GRID = "

                                       ║   ║   ║   ║   ║   ║
                                    ═══╬═══╬═══╬═══╬═══╬═══╬═══
                                       ║   ║   ║   ║   ║   ║
                                    ═══╬═══╬═══╬═══╬═══╬═══╬═══
                 ║   ║   ║   ║         ║   ║   ║   ║   ║   ║
              ═══╬═══╬═══╬═══╬═══   ═══╬═══╬═══╬═══╬═══╬═══╬═══
                 ║   ║   ║   ║         ║   ║   ║ 7 ║   ║   ║
              ═══╬═══╬═══╬═══╬═══   ═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║         ║   ║ 5 ║   ║         ║   ║   ║   ║   ║   ║
═══╬═══╬═══   ═══╬═══╬═══╬═══╬═══   ═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║ 3 ║         ║   ║   ║   ║         ║   ║   ║   ║   ║   ║
═══╬═══╬═══   ═══╬═══╬═══╬═══╬═══   ═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║         ║   ║   ║   ║         ║   ║   ║   ║   ║   ║

".freeze

  GAMEOVER = "
  /$$$$$$                                           /$$$$$$
 /$$__  $$                                         /$$__  $$
| $$  \\__/  /$$$$$$  /$$$$$$/$$$$   /$$$$$$       | $$  \\ $$ /$$    /$$ /$$$$$$   /$$$$$$
| $$ /$$$$ |____  $$| $$_  $$_  $$ /$$__  $$      | $$  | $$|  $$  /$$//$$__  $$ /$$__  $$
| $$|_  $$  /$$$$$$$| $$ \\ $$ \\ $$| $$$$$$$$      | $$  | $$ \\  $$/$$/| $$$$$$$$| $$  \\__/
| $$  \\ $$ /$$__  $$| $$ | $$ | $$| $$_____/      | $$  | $$  \\  $$$/ | $$_____/| $$
|  $$$$$$/|  $$$$$$$| $$ | $$ | $$|  $$$$$$$      |  $$$$$$/   \\  $/  |  $$$$$$$| $$
 \\______/  \\_______/|__/ |__/ |__/ \\_______/       \\______/     \\_/    \\_______/|__/

  ".freeze

  DRAW = "
  /$$$$$$$                                   /$$
  | $$__  $$                                 | $$
  | $$  \\ $$  /$$$$$$  /$$$$$$  /$$  /$$  /$$| $$
  | $$  | $$ /$$__  $$|____  $$| $$ | $$ | $$| $$
  | $$  | $$| $$  \\__/ /$$$$$$$| $$ | $$ | $$|__/
  | $$  | $$| $$      /$$__  $$| $$ | $$ | $$
  | $$$$$$$/| $$     |  $$$$$$$|  $$$$$/$$$$/ /$$
  |_______/ |__/      \\_______/ \\_____/\\___/ |__/

  ".freeze

  def fancy_intro
    cls
    puts ODIN
    sleep(1.5)
    cls
    puts TIC
    puts 'Press any key to start new game.'
    gets
  end

  def fancy_gameover
    puts GAMEOVER
  end

  def fancy_draw
    puts DRAW
  end
end

# Board module - collection of board creation, rendering, and checking functions
module Board
  def make_mapping(grid_size = 3, id = 0)
    grid_map = Hash.new(false)
    (0..grid_size - 1).each do |i|
      (0..grid_size - 1).each do |j|
        id += 1
        grid_map[id] = [i, j]
      end
    end
    grid_map
  end

  def initialize_board(grid_size = 3)
    board = []
    grid_size.times do
      board << Array.new(grid_size, '')
    end
    board
  end

  def update_board(coords, avatar, board)
    board[coords[0]][coords[1]] = avatar
    board
  end

  def draw_divider
    print '║'
  end

  def draw_row(grid_size = 3)
    row = "\n"
    (grid_size - 1).times { row << '═══╬' }
    row << '═══'
    puts row
  end

  def format(val)
    val.to_s.rjust(3, ' ')
  end

  def draw_board(board, moves_only = false)
    grid_size = board.length
    k = 0
    (0..grid_size - 1).each do |i|
      (0..grid_size - 1).each do |j|
        k += 1
        if board[i][j].empty?
          if moves_only == true
            print "#{format('')}"
          else
            print "#{format(k)}"
          end
        else
          print "#{format(board[i][j])}"
        end
        draw_divider if j < grid_size - 1
      end
      draw_row(grid_size) if i < grid_size - 1
    end
    puts "\n\n"
  end

  def valid_move(coords, board)
    val = board[coords[0]][coords[1]]
    !(val.include?('x') || val.include?('o'))
  end

  def check_winner(avatar, board)
    board = Marshal.load(Marshal.dump(board))
    grid_size = board[0].length
    # check rows
    for row in 0..grid_size - 1 do
      result = board[row].reduce('') { |acc, item| acc << item }
      return true if result.count(avatar) == grid_size
    end
    # check columns
    for col in 0..grid_size - 1 do
      result = board.map { |row| row[col] }.join
      return true if result.count(avatar) == grid_size
    end
    # check diaganols
    result = (0..grid_size - 1).to_a.reduce('') { |acc, i| acc << board[i][i] }
    return true if result.count(avatar) == grid_size

    result = (0..grid_size - 1).to_a.reduce('') { |acc, i| acc << board[i][grid_size - 1 - i] }
    return true if result.count(avatar) == grid_size

    false
  end

  def check_tie(board)
    board = Marshal.load(Marshal.dump(board))
    board.flatten.count('').zero?
  end
end

# Tests module - testing functionality of the board functions
module Tests
  def test_drawing(grid_sizes = [3, 5, 7, 9])
    grid_sizes.each do |i|
      mapping = make_mapping(i)
      board = initialize_board(i)
      coords = mapping[5]
      board = update_board(coords, 'x', board)
      draw_board(board)
    end
  end

  def test_horizontal
    mapping = make_mapping(9)
    board = initialize_board(9)
    (1..9).to_a.each do |i|
      coords = mapping[i]
      update_board(coords, 'x', board)
    end
    draw_board(board)
    puts check_winner('x', board)
  end

  def test_vertical
    mapping = make_mapping(9)
    board = initialize_board(9)
    (1..73).step(9).to_a.each do |i|
      coords = mapping[i]
      update_board(coords, 'x', board)
    end
    draw_board(board)
    puts check_winner('x', board)
  end

  def test_diag1
    mapping = make_mapping(9)
    board = initialize_board(9)
    (1..81).step(10).to_a.each do |i|
      coords = mapping[i]
      update_board(coords, 'x', board)
    end
    draw_board(board)
    puts check_winner('x', board)
  end

  def test_diag2
    mapping = make_mapping(9)
    board = initialize_board(9)
    (9..73).step(8).to_a.each do |i|
      coords = mapping[i]
      update_board(coords, 'x', board)
    end
    draw_board(board)
    puts check_winner('x', board)
  end

  def test_diag3
    mapping = make_mapping(5)
    board = initialize_board(5)
    [1, 7].each do |i|
      coords = mapping[i]
      update_board(coords, 'x', board)
    end
    draw_board(board)
    puts check_winner('x', board)
  end
end

# Player class
class Player
  attr_accessor :name, :avatar, :id, :unique_counter

  @@unique_counter = 0

  def initialize(name = 'unknown', avatar = '')
    @name = name
    @avatar = avatar
    @id = @@unique_counter
    @@unique_counter += 1
  end
end

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

  def play_game
    draw_board(@board)
    until check_winner(@player1.avatar, @board) || check_winner(@player2.avatar, @board) || check_tie(@board)
      loop do
        coords = player_input
        if okay_to_move(coords)
          @board = update_board(coords, @player_now.avatar, @board)
          draw_board(@board)
          draw_board(@board, true)
          switch_player
          break
        end
        puts 'Invalid input'
        draw_board(@board)
      end
    end
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

game = Game.new
game.main
