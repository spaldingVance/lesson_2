def average(ary)
  total = 0
  ary.each {|x| total+=x}
  avg = total/ary.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40