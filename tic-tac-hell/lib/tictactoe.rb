class Game
  attr_accessor :Player, :Board

  def initalize
    #order of things
   @board= Board.new
   @score= Score.new
   intro
   player_symbols
   take_turn until @board.win? || @board.full?
   puts "Game Over"
  end

  def player_symbols
     @user = 'X'
     @computer= 'O'
  end

    def names
      @computer_name= 'Jackie'


  def replace (position, user)
    @board[pos] = user
  end

  def full?
    @board.count ('_') == 0 #no spaces left

  def empty?
    return @board[pos] == '_'
  end

  def intro
  print "Welcome to Tic-Tac-Toe. My name is #{computer_name}."
  print "What is your name?"
   @user_name = gets.chomp
  print "Cool, so your name is #{@user_name}"
  end

  def print_board
    puts @board
  end

  def user_turn
    @board.fx_display
    puts "#{user_name}, it's your turn"
    turn = gets.chomp
  end

def board_win? (player)
  # # #blah. how do I make this into a simpler each.do setup?
  # # if @ board.winner.each do |winning_positions|
  # #   winning_places.each do |board|
  # #   if board.positions ["#{index}"] == "x"
  #     else board.positions ["#{index}"] =="o"
  #     end
  #     if x_values ==3 or o_values == 3
  #     print "game over"
  #     end
  #     if x_count == 3
  #       print "#{user_name} won"
  #     if o_count ==3
  #       print "#{computer_name} won"
  #     end
  #   end

  if @board[5]
    if (@board[1] && @board[9] ) ||
       (@board[4] && @board[6] ) ||
       (@board[2] && @board[8] ) ||
       (@board[3] && @board[7] )
      return true
    end
  end

  if @board[9]
    if (@board[3] && @board[6]) ||
       (@board[7] && @board[8] )
      return true
    end
  end

  if @board[1]
    if (@board[2] && @board[3]  ||
       (@board[4] && @board[7] )
      return true
    end
  end
else
  return false
end
end
