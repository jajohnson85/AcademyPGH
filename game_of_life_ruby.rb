grid = Array.new(10) {Array.new(10,0)}

for i in 0...grid.length
  for j in 0...grid.length
    print grid [i][j]
  end
  puts
end



## randomly assign live cells
## if a live cell borders two or theee other live cells, it will continue to live.
## otherwise, it will die
neighbors = 0
livebirth1x = rand(10)
livebirth1y = rand(10)
livebirth2x = rand(10)
livebirth2y = rand(10)
livebirth3x = rand(10)
livebirth3y = rand(10)
livebirth4x = rand(10)
livebirth4y = rand(10)
livebirth5x = rand(10)
livebirth5y = rand(10)
livebirth6x = rand(10)
livebirth6y = rand(10)

grid [livebirth1x][livebirth1y] = 1
grid [livebirth2x][livebirth2y] = 1
grid [livebirth3x][livebirth3y] = 1
grid [livebirth4x][livebirth4y] = 1
grid [livebirth5x][livebirth5y] = 1
grid [livebirth6x][livebirth6y] = 1

## generational permutations begin here
puts livebirth6y
puts livebirth6x
while true
for k in 0...grid.length-1
  for l in 0...grid.length-1
    if k > 0 && l > 0
      neighbors = grid[k-1][l].to_i + grid[k-1][l+1].to_i + grid [k-1][l-1].to_i + grid[k][l+1].to_i + grid[k][l-1].to_i + grid[k+1][l].to_i + grid[k+1][l-1].to_i + grid[k+1][l+1].to_i
    end
    if k == 0 && l > 0
      neighbors = grid[k][l+1].to_i + grid[k][l-1].to_i + grid[k+1][l].to_i + grid[k+1][l-1].to_i + grid[k+1][l+1].to_i
    end
    if k > 0 && l == 0
      neighbors = grid[k-1][l].to_i + grid[k-1][l+1].to_i + grid[k][l+1].to_i + grid[k+1][l].to_i + grid[k+1][l+1].to_i
    end
  end
    if neighbors == 2 || neighbors == 3
      grid[k][l] = 1

  else
      grid[k][l] = 0
    end
end
for i in 0...grid.length
  for j in 0...grid.length
    print grid [i][j]
  end
  puts
end
puts
end
