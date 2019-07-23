#get int and bool
#if bool == true then bonus = int/2
#else bonus = 0

def calculate_bonus(int, bool)
  bonus = 0
  if bool == true
    bonus = int/2
  else
    bonus = 0
  end
  return bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000