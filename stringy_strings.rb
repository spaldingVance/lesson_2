def stringy(num)
  final_string = ""
  num.times do |x|
    if x%2 == 0
      final_string += '1'
    else
      final_string += '0'
    end
  end
  return final_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'