print "Give me a string: "
new_string = gets.chomp

# ASCII

def position(letter, shift_factor)
    print letter.upcase.ord - 'A'.ord + 1 + shift_factor
end

def ceaser_cipher(sentence, shift_factor)
    puts "Changing your string by #{shift_factor}"
    chars = sentence.chars
    chars.map do | char |  position(char, shift_factor) end
end

ceaser_cipher(new_string, 5)