class RomanConverter
  def to_r number
    result = ""
    (1..number).each do |i|
      result << "I"
    end
    return result
  end
end
