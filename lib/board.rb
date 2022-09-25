# frozen_string_literal: false

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
    (0..grid_size - 1).each do |row|
      result = board[row].reduce('') { |acc, item| acc << item }
      return true if result.count(avatar) == grid_size
    end
    # check columns
    (0..grid_size - 1).each do |col|
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
