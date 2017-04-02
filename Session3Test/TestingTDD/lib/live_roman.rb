class RomanConverter
  def to_r number
    array_number = [10, 9, 5, 4, 1]
    array_roman = ["X", "IX", "V", "IV", "I"]
    result = ""
    (0...array_number.length).each do |i|
      while number >= array_number[i]
        result << array_roman[i]
        number = number - array_number[i]
      end
    end
    return result
  end
end
