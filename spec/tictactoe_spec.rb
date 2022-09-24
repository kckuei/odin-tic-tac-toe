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
