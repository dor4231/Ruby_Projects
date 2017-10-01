def ceaser_cipher(text_input, key)
    a_to_z = ("a".."z").to_a
    dor = ("A".."Z").to_a

    result = ""
    text_input.each_char do |char|
        if a_to_z.index(char) == nil
            if dor.index(char) == nil
                result += char
            else
                result += dor[(dor.index(char) + key) % 26]
            end            
        else
            result += a_to_z[(a_to_z.index(char) + key) % 26]
        end
    end
    result
end


puts ceaser_cipher("abcd", 1)
puts ceaser_cipher("Dor Bar", 270000)
puts ceaser_cipher("Dor Bar", 1)
puts ceaser_cipher("ZZZ!!", 1)
puts ceaser_cipher("zzz!!", 1)