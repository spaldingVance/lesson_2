def reverse_words(string)
  ary = string.split(" ")
  new_text = ""
  ary.map {|word| word.reverse! if word.length > 4}
  while ary.size > 1 do 
    new_text += ary.shift
    new_text += " "
  end
  if ary.size == 1
    new_text += ary.shift
    return new_text
  else
    return new_text
  end
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
