def sum(int)
  string_int = int.to_s
  digits = string_int.split('')
  total = 0
  digits.each { |x| total+=x.to_i }
  return total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45