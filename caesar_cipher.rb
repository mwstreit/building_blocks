
def caesar_cipher(string, offset)
  coded = ''
  string.scan(/./) do |char|
    if ("a".."z").include? (char.downcase)
      offset.times {char = char.next}
      new_char = char[-1]
    elsif ("A".."Z").include? (char.upcase)
      offset.times {char = char.next}
      new_char = char[-1]
    else
      new_char = char
    end
    coded << new_char
  end
  return coded
end

puts 'What would you like to encode?'
string = gets.chomp
puts 'What would you like the offset to be?'
offset = gets.chomp
offset = offset.to_i

puts caesar_cipher(string, offset)
