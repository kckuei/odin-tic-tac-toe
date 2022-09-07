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

grid_3x3 = "
   |   |   
---+---+---
   |   |   
---+---+---
   |   |   
"


grid_5x5 = "
   |   |   |   |   
---+---+---+---+---
   |   |   |   |   
---+---+---+---+---
   |   |   |   |   
---+---+---+---+---
   |   |   |   |   
---+---+---+---+---
   |   |   |   |   
"

grid_3x3 = "
   │   │
───┼───┼───
   │   │
───┼───┼───
   │   │
"

grid_5x5 = "
   │   │   │   │
───┼───┼───┼───┼───
   │   │   │   │
───┼───┼───┼───┼───
   │   │   │   │
───┼───┼───┼───┼───
   │   │   │   │
───┼───┼───┼───┼───
   │   │   │   │
"

grid_7x7 = "
   ║   ║   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   ║   ║  
═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   ║   ║  
═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   ║   ║  
═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   ║   ║  
═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   ║   ║  
═══╬═══╬═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   ║   ║  
"

grid_5x5 = "
   ║   ║   ║   ║
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║
"

grid_3x3 = "
   ║   ║   
═══╬═══╬═══
   ║   ║   
═══╬═══╬═══
   ║   ║   
"

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


include Utilities

cls
puts ODIN
sleep(1)
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
puts "\n#{username1} (o) and #{username2} (x) will dual to the fate in a game of #{grid_size}x#{grid_size} tic-tac-toe. Winner take all! ...Champions, prepare yourselves!"
gets
cls
puts "#{username1}\'s move!"
gets
cls
puts "#{username2}\'s move!"


# while 1
#    puts "Enter a number>>"
#    begin
#      num = Kernel.gets.match(/\d+/)[0]
#    rescue
#      puts "Erroneous input! Try again..."
#    else  
#      puts "#{num} + 1 is: #{num.to_i+1}"
#    end  
# end