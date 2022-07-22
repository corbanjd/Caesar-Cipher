def caesar_cipher(string, shift)
    #split everything into an array, store in array_string
    array_string = string.split("")
    #convert everything into ascii, store in ascii_array(no wrap applied yet)
    ascii_array = array_string.map {|element| (element.ord+shift).chr }
    #convert back into a string
    final_outcome = ascii_array.join("")

  
end