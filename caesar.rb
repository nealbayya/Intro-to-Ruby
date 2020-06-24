def encrypt(str, amt)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
    strlist = str.chars
    encrypted = ""
    strlist.each do |c|
        if !alphabet.include?(c.downcase())
            encrypted = encrypted + c 
            next
        end
        idx = alphabet.find_index(c.downcase())
        new_idx = (idx + amt) % 26
        if c == c.downcase() 
            encrypted = encrypted + alphabet[new_idx]
        else
            encrypted = encrypted + alphabet[new_idx].upcase()
        end
    end
    return encrypted
end


puts "Enter string: "
str = gets.chomp

puts "Enter shift factor"
shift = gets.chomp.to_i

puts encrypt(str, shift)