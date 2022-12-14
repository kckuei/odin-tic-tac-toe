# frozen_string_literal: false

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
