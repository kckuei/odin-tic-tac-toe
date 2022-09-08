ODIN = "
                 AN                                  
       _ _                      _         _   _ 
 ___ _| |_|___    ___ ___ ___ _| |_ _ ___| |_|_|___ ___ ___ 
| . | . | |   |  | . |  _| . | . | | |  _|  _| | . |   |_ -|
|___|___|_|_|_|  |  _|_| |___|___|___|___|_| |_|___|_|_|___|
                 |_|                                        \n\n
                            PRESENTS
"

TIC = "					   
 /$$$$$$$$ /$$             /$$$$$$$$                     /$$$$$$$$                 
|__  $$__/|__/            |__  $$__/                    |__  $$__/                 
   | $$    /$$  /$$$$$$$     | $$  /$$$$$$   /$$$$$$$      | $$  /$$$$$$   /$$$$$$ 
   | $$   | $$ /$$_____/     | $$ |____  $$ /$$_____/      | $$ /$$__  $$ /$$__  $$
   | $$   | $$| $$           | $$  /$$$$$$$| $$            | $$| $$  \ $$| $$$$$$$$
   | $$   | $$| $$           | $$ /$$__  $$| $$            | $$| $$  | $$| $$_____/
   | $$   | $$|  $$$$$$$     | $$|  $$$$$$$|  $$$$$$$      | $$|  $$$$$$/|  $$$$$$$
   |__/   |__/ \\_______/     |__/ \\_______/ \\_______/      |__/ \______/  \\_______/\n\n
"

module Utilities
  def cls
    system('cls')
  end
end

grid = "

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

"



def make_mapping(grid_size=3, id=0)
  grid_map = {}
  for i in 0..grid_size-1 do
    for j in 0..grid_size-1 do
      id += 1
      grid_map[id] = [i,j]
    end
  end
  grid_map
end

def initialize_board(grid_size=3)
  board = Array.new()
  grid_size.times do
    board <<  Array.new(grid_size, '')
  end
  board
end


def update_board(coords, avatar, board)
  board[coords[0]][coords[1]] = avatar
  board
end

def draw_divider
  print "║"
end

def draw_row(grid_size=3)
  row = "\n"
  (grid_size-1).times { row << "═══╬" }
  row << "═══"
  puts row
end

def format(val)
  return val.to_s.rjust(3, ' ')
end

def render_board(board)
  grid_size = board.length
  k = 0;
  for i in 0..grid_size-1 do
    for j in 0..grid_size-1 do
      k += 1
  	  if board[i][j].empty?
          print "#{format(k)}"
  	  else
          print "#{format(board[i][j])}"
  	  end
  	  draw_divider if j < grid_size-1
    end
    draw_row(grid_size) if i < grid_size-1
  end
end

def valid_move(coords, board)
  val = board[coords[0]][coords[1]].include?('x')
  return val.include?('x') || val.include('o')
end

# Test 3x3 board
mapping = make_mapping(3)
board = initialize_board(3)
coords = mapping[5]
board = update_board(coords, 'x', board)
render_board(board)

puts "\n\n"

# Test 5x5 board
mapping = make_mapping(5)
board = initialize_board(5)
coords = mapping[5]
board = update_board(coords, 'x', board)
render_board(board)

puts "\n\n"

# Test 7x7 board
mapping = make_mapping(7)
board = initialize_board(7)
coords = mapping[7]
board = update_board(coords, 'x', board)
render_board(board)

puts "\n\n"

# Test 9x9 board
mapping = make_mapping(9)
board = initialize_board(9)
coords = mapping[9]
board = update_board(coords, 'x', board)
render_board(board)



gets


include Utilities

cls
puts ODIN
sleep(1.5)
cls
puts TIC
puts "Press any key to start new game."
gets
cls
puts grid
grid_size = 0
until [3, 5, 7].include?(grid_size.to_i)
  puts "\nSelect your grid size (3, 5, 7)."
  grid_size = gets.chomp
end
cls
puts "Enter champion 1 name (o):"
username1 = gets.chomp
puts "\nEnter champion 2 name (x):"
username2 = gets.chomp
puts "\n#{username1} (o) and #{username2} (x) will dual to the fate in a game of #{grid_size}x#{grid_size} tic-tac-toe. Winner take all!"
puts "\n...Champions, prepare yourselves!"
gets
cls
puts "#{username1}\'s move!"
gets
cls
puts "#{username2}\'s move!"

