board = [" "," "," "," "," "," "," "," "," "]

puts "Welcome to Tic Tac Toe!"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "------------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  index = 0
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  
  while valid_move?(board, index) == true
  puts "Invalid Input!"
  turn(board)
end
  
  move(board, index, token = "X")

end

def position_taken?(board, index)
  if board[index] == " " ||  board[index] == "" ||  board[index] == nil
     false
  else
   true
  end
end

 def input_to_index(input)
   index = input.to_i - 1
   return index
 end
  

def valid_move?(board, index)
if position_taken?(board, index) == true
  false
elsif index.to_i > 9 || index.to_i < 0
    false
  else 
    true
  end
end




def move(board, index, token = "X")
  board[index]=token
end
  