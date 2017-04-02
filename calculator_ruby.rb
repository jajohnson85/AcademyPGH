class Calculate
  def add(a,b)
    a = a.to_i
    b = b.to_i
    answer = a + b
  end

  def subtract(a,b)
    a = a.to_i
    b = b.to_i
    answer = a - b
  end

  def multiply(a,b)
    a = a.to_i
    b = b.to_i
    answer = a * b
  end

  def divide(a,b)
    a = a.to_i
    b = b.to_i
    answer = a / b
  end
end
run = true
while run == true
  puts "Enter operation to be performed (+, -, *, /) "
  user_operation = gets.chomp

  if user_operation.include?("+")
    a = user_operation.split("+")[0]
    b = user_operation.split("+")[1]
    result = Calculate.new.add(a,b)
    puts "#{a} + #{b} = #{result}"

  elsif user_operation.include?("-")
    a = user_operation.split("-")[0]
    b = user_operation.split("-")[1]
    result = Calculate.new.subtract(a,b)
    puts "#{a} - #{b} = #{result}"

  elsif user_operation.include?("*")
    a = user_operation.split("*")[0]
    b = user_operation.split("*")[1]
    result = Calculate.new.multiply(a,b)
    puts "#{a} * #{b} = #{result}"

  elsif user_operation.include?("/")
    a = user_operation.split("/")[0]
    b = user_operation.split("/")[1]
    result = Calculate.new.divide(a,b)
    puts "#{a} / #{b} = #{result}"
  end
  puts "would you like to enter another ? (Y/N)"
  answer = gets.chomp.downcase
  if answer != "y"
    run = false
  end
end
