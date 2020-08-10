# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # Backslash diagonal
  [2, 4, 6]  # Forwardslash diagonal
]

#won? returns the winning combination or falsey for an empty board or draw
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
      if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") || (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
        return win_combination
      end
  end
  false
end

#full? checks if the board is full
def full?(board)
  board.all? do |position|
  position == "X" || position == "O"
  end
end

#draw? returns true if the board has not been won but is full, false if the board is not won and the board is not full, and false if the board is won
def draw?(board)
  if
    won?(board) == false && full?(board) == true
    true
  elsif
    won?(board) == false && full?(board) == false
  else
    won?(board) == true
  end
end

#over? returns true if the board has been won, is a draw, or is full
def over?(board)
  if
    won?(board) != false || draw?(board) == true || full?(board) == true
    true
  end
end

#winner return the token, "X" or "O" that has won the game given a winning board
def winner(board)
  
  if
    won?(board) != false
    return won?(board)
  end
end





