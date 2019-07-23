#create hash
#loop through vehicles array
#if hash contains array element, increase value by 1
#else, add to hash with value of 0

def count_occurrences(vehicles)
  my_hash = Hash.new
  vehicles.each do |vehicle|
    if my_hash.has_key?(vehicle)
      my_hash[vehicle]+=1
    else
      my_hash[vehicle] = 1
    end
  end
  puts my_hash
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)