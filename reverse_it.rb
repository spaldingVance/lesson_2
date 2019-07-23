def reverse_sentence(string)
  ary = string.split(' ')
  new_text = ""
  while ary.size > 1 do
    new_text += ary.pop
    new_text += " "
  end
  if ary.size == 1
    new_text += ary.pop
    return new_text
  else
    return new_text
  end
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'