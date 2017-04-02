def display_board(board)
  board.each do |row|
    row.each do |cell|
      print cell
      print " "
    end
    puts
  end
  puts
end

secret_board = Array.new(5) {Array.new(5,false)}
secret_board[1][1]= true
secret_board[0][2] = true

show_board = Array.new(5) {Array.new(5,0)}
display_board(show_board)

while game_on = true
puts "please enter two numbers; one for row and one for column (x,y)"
guess = gets.chomp.split(",")
x_guess = guess[0].to_i
y_guess = guess[1].to_i

if secret_board[x_guess][y_guess] = true
  puts "Direct hit!!!"
  show_board[x_guess][y_guess] = "X"
  display_board(show_board)
elsif
  puts "You miss. Guess again"
end

end
puts x_guess
puts y_guess
