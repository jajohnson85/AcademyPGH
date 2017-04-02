grid = Array.new(8) {Array.new(8,0)}

def draw_g (grid)
  grid.each do | i |
puts             #
  i.each do | j |
    print j
end
end
puts
return
end


draw_g(grid)


ship1y = rand(7)
ship1x = rand(7)
ship2y = rand(7)
ship2x = rand(7)

ship3y = rand(7)
ship3x = rand(7)

ship3y0 = ship3y
ship3x0 = ship3x

run_dchoice_loop = true
# def gen_direction
while run_dchoice_loop == true

  direction_choice = rand(3)
  case direction_choice
  when 0
    ship3x0 = ship3x0 - 1
  when 1
    ship3y0 = ship3y0 + 1
  when 2
    ship3x0 = ship3x0 + 1
  when 3
    ship3y0 = ship3y0 - 1
  end

  if ship3y0 < 7 || ship3y0 > 0 || ship3x0 < 7 || ship3y0 > 0
    run_dchoice_loop = false
end


while grid[ship1y][ship1x]!= "X" || grid[ship2y][ship2x]!= "X" || grid[ship3y][ship3x] != "X" || grid[ship3y0][ship3x0] != "X"

input_check_loop = true

while input_check_loop == true

  puts "Enter target Y coordinate"
  target_y = gets.to_i
  puts "Enter target X coordinate"
  target_x = gets.to_i
  if target_y > 7 || target_x > 7 || target_y.to_s =~ (/\d+/) || target_x.to_s =~ (/\d+/)
    puts "I dont understand youre coordinates. Please Re-enter"
  else
    input_check_loop = false
end
end

 if target_y == ship1y && target_x == ship1x
   puts "HIT! Ship Sunk"
   grid[ship1y][ship1x] = "X"
 elsif target_y == ship2y && target_x == ship2x
   puts "HIT! Ship Sunk"
   grid[ship2y][ship2x] = "X"
 elsif target_y == ship3y && target_x == ship3x
   puts "HIT!"
   grid[ship3y][ship3x] = "X"
 elsif target_y == ship3y0 && target_x == ship3x0
   puts "HIT!"
   grid[ship3y0][ship3x0] = "X"
 elsif grid[ship3y0][ship3x0]== "X" && grid[ship3y][ship3x] == "X"
     "Ship Sunk!"
 else
   puts "MISS"
   grid[target_y][target_x] = "~"
 end

    draw_g (grid)
 end
 if grid[ship2y][ship2x]=="X" && grid[ship1y][ship1x]=="X" && grid[ship3y][ship3x] = "X" && grid[ship3y0][ship3x0] = "X"
   puts "You WIN"
   puts "GAME OVER"
   puts clear
end
end