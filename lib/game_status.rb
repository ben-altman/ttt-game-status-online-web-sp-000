# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |winner|
    if winner.all? {|position| board[position] == "X"} || 
    winner.all? {|position| board[position] == "O"}
    return winner
    end
  end  
  return false
end

def full?(board)
  board.all? {|position| position == "X" || position == "O"}
end  

def draw?(board)
  if full?(board) == true && !won?(board) == true
    return true
  # else
  #   return false
  end
end  

def over?(board)
  if !won?(board) == false || draw?(board) == true
    return true
  # else false
  end
end

def winner(board)
  if draw?(board) == true
    return nil
  elsif won?(board) != false
    return board[won?(board)[1]]
  end
end  