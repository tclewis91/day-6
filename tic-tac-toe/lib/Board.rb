class Board


  def board
    [1, 2, 3, 4, 5, 6, 7, 8, 9]
  def user_display
    sep = '§'
    puts board[1..3].join(sep)
    puts board[4..6].join(sep)
    puts board[7..9].join(sep)
  end

  def fx_display
    # allows user to input position with corresponding space
    puts " #{user.position ["1"] }"  |  " #{user.position ["2"] }" | " #{user.position ["3"] }"
    puts "---------------"
    puts " #{user.position ["4"] }"  |  " #{user.position ["5"] }" | " #{user.position ["6"] }"
    puts "---------------"
    puts " #{user.position ["7"] }"  |  " #{user.position ["8"] }" | " #{user.position ["9"] }"
  end


  def winner
    @winner = [
    #horizontal
    [1,2,3],
    [4,5,6],
    [7,8,9],
    #vertical
    [1,4,7],
    [2,5,8],
    [3,6,9],
    #diagonal
    [1,5,9],
    [3,5,7],
  ].
  end

def did_win_game?(board, player)
  #class notes...figure out how to combine

  made_moves = []
  board.each_with_index do |space, index|
    if space == player
      made_moves.push(index)
    end
  end
  winning_sets = []
  winning_moves.each do |move_set|
    this_set = []
    move_set.each do |elem|
      this_set.push(made_moves.include?(elem))
    end
    winning_sets.push(this_set.all?)
  end
  winning_sets.any? #
end
end
end
end
