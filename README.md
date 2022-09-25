# odin-tic-tac-toe
Toy REPL (read print loop) console tic-tac-toe program implemented in `ruby` using OOP. Unit tests implemented with `rspec` for testing key functionality such as correct game board generation, and declaration of winner. 
[👉Live demo👈](https://replit.com/@KevinKuei/TicTacToe#main.rb). 

Note that the Live Demo uses the first implementation before units tests were added, and seperation of classes and modules into seperate files. Functionality, however, remains the same.

## Example Game - 3x3 Grid Winner:

```
                 AN
       _ _                      _         _   _
 ___ _| |_|___    ___ ___ ___ _| |_ _ ___| |_|_|___ ___ ___
| . | . | |   |  | . |  _| . | . | | |  _|  _| | . |   |_ -|
|___|___|_|_|_|  |  _|_| |___|___|___|___|_| |_|___|_|_|___|
                 |_|                                        


                            PRESENTS

/$$$$$$$$ /$$             /$$$$$$$$                     /$$$$$$$$
|__  $$__/|__/            |__  $$__/                    |__  $$__/
  | $$    /$$  /$$$$$$$     | $$  /$$$$$$   /$$$$$$$      | $$  /$$$$$$   /$$$$$$
  | $$   | $$ /$$_____/     | $$ |____  $$ /$$_____/      | $$ /$$__  $$ /$$__  $$
  | $$   | $$| $$           | $$  /$$$$$$$| $$            | $$| $$   $$| $$$$$$$$
  | $$   | $$| $$           | $$ /$$__  $$| $$            | $$| $$  | $$| $$_____/
  | $$   | $$|  $$$$$$$     | $$|  $$$$$$$|  $$$$$$$      | $$|  $$$$$$/|  $$$$$$$
  |__/   |__/ \_______/     |__/ \_______/ \_______/      |__/ ______/  \_______/


Press any key to start new game.



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


Select a grid size (3, 5, 7, 9).
3

Enter champion 1 name (o):
KEVIN

Enter champion 2 name (x):
ALAN 

KEVIN (o) and ALAN (x) will dual to the fate in a game of 3x3 tic-tac-toe.

...prepare for battle!!! >:D

  1║  2║  3
═══╬═══╬═══
  4║  5║  6
═══╬═══╬═══
  7║  8║  9

KEVIN's (o) move! Enter a grid id.
5
  1║  2║  3
═══╬═══╬═══
  4║  o║  6
═══╬═══╬═══
  7║  8║  9

   ║   ║   
═══╬═══╬═══
   ║  o║   
═══╬═══╬═══
   ║   ║   

ALAN's (x) move! Enter a grid id.
1
  x║  2║  3
═══╬═══╬═══
  4║  o║  6
═══╬═══╬═══
  7║  8║  9

  x║   ║   
═══╬═══╬═══
   ║  o║   
═══╬═══╬═══
   ║   ║   

KEVIN's (o) move! Enter a grid id.
3
  x║  2║  o
═══╬═══╬═══
  4║  o║  6
═══╬═══╬═══
  7║  8║  9

  x║   ║  o
═══╬═══╬═══
   ║  o║   
═══╬═══╬═══
   ║   ║   

ALAN's (x) move! Enter a grid id.
7
  x║  2║  o
═══╬═══╬═══
  4║  o║  6
═══╬═══╬═══
  x║  8║  9

  x║   ║  o
═══╬═══╬═══
   ║  o║   
═══╬═══╬═══
  x║   ║   

KEVIN's (o) move! Enter a grid id.
8
  x║  2║  o
═══╬═══╬═══
  4║  o║  6
═══╬═══╬═══
  x║  o║  9

  x║   ║  o
═══╬═══╬═══
   ║  o║   
═══╬═══╬═══
  x║  o║   

ALAN's (x) move! Enter a grid id.
4
  x║  2║  o
═══╬═══╬═══
  x║  o║  6
═══╬═══╬═══
  x║  o║  9

  x║   ║  o
═══╬═══╬═══
  x║  o║   
═══╬═══╬═══
  x║  o║   


  /$$$$$$                                           /$$$$$$
 /$$__  $$                                         /$$__  $$
| $$  \__/  /$$$$$$  /$$$$$$/$$$$   /$$$$$$       | $$  \ $$ /$$    /$$ /$$$$$$   /$$$$$$
| $$ /$$$$ |____  $$| $$_  $$_  $$ /$$__  $$      | $$  | $$|  $$  /$$//$$__  $$ /$$__  $$
| $$|_  $$  /$$$$$$$| $$ \ $$ \ $$| $$$$$$$$      | $$  | $$ \  $$/$$/| $$$$$$$$| $$  \__/
| $$  \ $$ /$$__  $$| $$ | $$ | $$| $$_____/      | $$  | $$  \  $$$/ | $$_____/| $$
|  $$$$$$/|  $$$$$$$| $$ | $$ | $$|  $$$$$$$      |  $$$$$$/   \  $/  |  $$$$$$$| $$
 \______/  \_______/|__/ |__/ |__/ \_______/       \______/     \_/    \_______/|__/

  
  x║   ║  o
═══╬═══╬═══
  x║  o║   
═══╬═══╬═══
  x║  o║   

ALAN (x) is the tic-tac-toe champion!

Press any key to start a new game.
```


## Example Game - 3x3 Grid Draw:

```
                 AN
       _ _                      _         _   _
 ___ _| |_|___    ___ ___ ___ _| |_ _ ___| |_|_|___ ___ ___
| . | . | |   |  | . |  _| . | . | | |  _|  _| | . |   |_ -|
|___|___|_|_|_|  |  _|_| |___|___|___|___|_| |_|___|_|_|___|
                 |_|                                        


                            PRESENTS



/$$$$$$$$ /$$             /$$$$$$$$                     /$$$$$$$$
|__  $$__/|__/            |__  $$__/                    |__  $$__/
  | $$    /$$  /$$$$$$$     | $$  /$$$$$$   /$$$$$$$      | $$  /$$$$$$   /$$$$$$
  | $$   | $$ /$$_____/     | $$ |____  $$ /$$_____/      | $$ /$$__  $$ /$$__  $$
  | $$   | $$| $$           | $$  /$$$$$$$| $$            | $$| $$   $$| $$$$$$$$
  | $$   | $$| $$           | $$ /$$__  $$| $$            | $$| $$  | $$| $$_____/
  | $$   | $$|  $$$$$$$     | $$|  $$$$$$$|  $$$$$$$      | $$|  $$$$$$/|  $$$$$$$
  |__/   |__/ \_______/     |__/ \_______/ \_______/      |__/ ______/  \_______/


Press any key to start new game.


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


Select a grid size (3, 5, 7, 9).

Select a grid size (3, 5, 7, 9).
3

Enter champion 1 name (o):
kevin

Enter champion 2 name (x):
alan

kevin (o) and alan (x) will dual to the fate in a game of 3x3 tic-tac-toe.

...prepare for battle!!! >:D

  1║  2║  3
═══╬═══╬═══
  4║  5║  6
═══╬═══╬═══
  7║  8║  9

kevin's (o) move! Enter a grid id.
5
  1║  2║  3
═══╬═══╬═══
  4║  o║  6
═══╬═══╬═══
  7║  8║  9

   ║   ║   
═══╬═══╬═══
   ║  o║   
═══╬═══╬═══
   ║   ║   

alan's (x) move! Enter a grid id.
2
  1║  x║  3
═══╬═══╬═══
  4║  o║  6
═══╬═══╬═══
  7║  8║  9

   ║  x║   
═══╬═══╬═══
   ║  o║   
═══╬═══╬═══
   ║   ║   

kevin's (o) move! Enter a grid id.
6
  1║  x║  3
═══╬═══╬═══
  4║  o║  o
═══╬═══╬═══
  7║  8║  9

   ║  x║   
═══╬═══╬═══
   ║  o║  o
═══╬═══╬═══
   ║   ║   

alan's (x) move! Enter a grid id.
4
  1║  x║  3
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
  7║  8║  9

   ║  x║   
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
   ║   ║   

kevin's (o) move! Enter a grid id.
8
  1║  x║  3
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
  7║  o║  9

   ║  x║   
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
   ║  o║   

alan's (x) move! Enter a grid id.
9
  1║  x║  3
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
  7║  o║  x

   ║  x║   
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
   ║  o║  x

kevin's (o) move! Enter a grid id.
1
  o║  x║  3
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
  7║  o║  x

  o║  x║   
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
   ║  o║  x

alan's (x) move! Enter a grid id.
3
  o║  x║  x
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
  7║  o║  x

  o║  x║  x
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
   ║  o║  x

kevin's (o) move! Enter a grid id.
7
  o║  x║  x
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
  o║  o║  x

  o║  x║  x
═══╬═══╬═══
  x║  o║  o
═══╬═══╬═══
  o║  o║  x


  /$$$$$$$                                   /$$
  | $$__  $$                                 | $$
  | $$  \ $$  /$$$$$$  /$$$$$$  /$$  /$$  /$$| $$
  | $$  | $$ /$$__  $$|____  $$| $$ | $$ | $$| $$
  | $$  | $$| $$  \__/ /$$$$$$$| $$ | $$ | $$|__/
  | $$  | $$| $$      /$$__  $$| $$ | $$ | $$
  | $$$$$$$/| $$     |  $$$$$$$|  $$$$$/$$$$/ /$$
  |_______/ |__/      \_______/ \_____/\___/ |__/

  
It's a tie! kevin and alan were equally matched!

Press any key to start a new game.
```

## Example Game - 9x9 Grid Winner:

```
                 AN
       _ _                      _         _   _
 ___ _| |_|___    ___ ___ ___ _| |_ _ ___| |_|_|___ ___ ___
| . | . | |   |  | . |  _| . | . | | |  _|  _| | . |   |_ -|
|___|___|_|_|_|  |  _|_| |___|___|___|___|_| |_|___|_|_|___|
                 |_|                                        


                            PRESENTS

/$$$$$$$$ /$$             /$$$$$$$$                     /$$$$$$$$
|__  $$__/|__/            |__  $$__/                    |__  $$__/
  | $$    /$$  /$$$$$$$     | $$  /$$$$$$   /$$$$$$$      | $$  /$$$$$$   /$$$$$$
  | $$   | $$ /$$_____/     | $$ |____  $$ /$$_____/      | $$ /$$__  $$ /$$__  $$
  | $$   | $$| $$           | $$  /$$$$$$$| $$            | $$| $$   $$| $$$$$$$$
  | $$   | $$| $$           | $$ /$$__  $$| $$            | $$| $$  | $$| $$_____/
  | $$   | $$|  $$$$$$$     | $$|  $$$$$$$|  $$$$$$$      | $$|  $$$$$$/|  $$$$$$$
  |__/   |__/ \_______/     |__/ \_______/ \_______/      |__/ ______/  \_______/


Press any key to start new game.



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


Select a grid size (3, 5, 7, 9).
5

Enter champion 1 name (o):
ALEX

Enter champion 2 name (x):
ZUSAK

ALEX (o) and ZUSAK (x) will dual to the fate in a game of 5x5 tic-tac-toe.
...prepare for battle!!! >:D

  1║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║ 12║ 13║ 14║ 15
═══╬═══╬═══╬═══╬═══
 16║ 17║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║ 22║ 23║ 24║ 25

ALEX's (o) move! Enter a grid id.
13
  1║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║ 12║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
 16║ 17║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║ 22║ 23║ 24║ 25

   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║  o║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   

ZUSAK's (x) move! Enter a grid id.
17
  1║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║ 12║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
 16║  x║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║ 22║ 23║ 24║ 25

   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║  o║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   

ALEX's (o) move! Enter a grid id.
1
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║ 12║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
 16║  x║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║ 22║ 23║ 24║ 25

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║  o║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   

ZUSAK's (x) move! Enter a grid id.
22
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║ 12║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
 16║  x║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║ 25

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║  o║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║   

ALEX's (o) move! Enter a grid id.
12
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║  o║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
 16║  x║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║ 25

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║   

ZUSAK's (x) move! Enter a grid id.
16
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║  o║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
  x║  x║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║ 25

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
  x║  x║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║   

ALEX's (o) move! Enter a grid id.
25
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║  o║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
  x║  x║ 18║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║  o

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
  x║  x║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║  o

ZUSAK's (x) move! Enter a grid id.
18
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║  o║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
  x║  x║  x║ 19║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║  o

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
  x║  x║  x║   ║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║  o

ALEX's (o) move! Enter a grid id.
19
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  9║ 10
═══╬═══╬═══╬═══╬═══
 11║  o║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
  x║  x║  x║  o║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║  o

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
  x║  x║  x║  o║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║  o

ZUSAK's (x) move! Enter a grid id.
9 
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  7║  8║  x║ 10
═══╬═══╬═══╬═══╬═══
 11║  o║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
  x║  x║  x║  o║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║  o

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║   ║   ║  x║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
  x║  x║  x║  o║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║  o

ALEX's (o) move! Enter a grid id.
7
  o║  2║  3║  4║  5
═══╬═══╬═══╬═══╬═══
  6║  o║  8║  x║ 10
═══╬═══╬═══╬═══╬═══
 11║  o║  o║ 14║ 15
═══╬═══╬═══╬═══╬═══
  x║  x║  x║  o║ 20
═══╬═══╬═══╬═══╬═══
 21║  x║ 23║ 24║  o

  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  o║   ║  x║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
  x║  x║  x║  o║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║  o


  /$$$$$$                                           /$$$$$$
 /$$__  $$                                         /$$__  $$
| $$  \__/  /$$$$$$  /$$$$$$/$$$$   /$$$$$$       | $$  \ $$ /$$    /$$ /$$$$$$   /$$$$$$
| $$ /$$$$ |____  $$| $$_  $$_  $$ /$$__  $$      | $$  | $$|  $$  /$$//$$__  $$ /$$__  $$
| $$|_  $$  /$$$$$$$| $$ \ $$ \ $$| $$$$$$$$      | $$  | $$ \  $$/$$/| $$$$$$$$| $$  \__/
| $$  \ $$ /$$__  $$| $$ | $$ | $$| $$_____/      | $$  | $$  \  $$$/ | $$_____/| $$
|  $$$$$$/|  $$$$$$$| $$ | $$ | $$|  $$$$$$$      |  $$$$$$/   \  $/  |  $$$$$$$| $$
 \______/  \_______/|__/ |__/ |__/ \_______/       \______/     \_/    \_______/|__/

  
  o║   ║   ║   ║   
═══╬═══╬═══╬═══╬═══
   ║  o║   ║  x║   
═══╬═══╬═══╬═══╬═══
   ║  o║  o║   ║   
═══╬═══╬═══╬═══╬═══
  x║  x║  x║  o║   
═══╬═══╬═══╬═══╬═══
   ║  x║   ║   ║  o

ALEX (o) is the tic-tac-toe champion!
```
