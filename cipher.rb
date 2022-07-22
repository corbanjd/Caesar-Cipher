def caesar_cipher(string, shift)
    #split everything into an array, store in array_string
    array_string = string.split("")
    #convert everything into ascii, store in ascii_array(factoring in for wrap, no conversion)
    ascii_array = array_string.map {|element| element.ord }

    shifter = ascii_array.map do |ascii| 
            if ascii.between?(65,90)
                if shift.positive?
                    ascii+shift>90? (ascii+shift)-26 : ascii+shift
                else
                    ascii+shift <64 ? (ascii+shift)+26: ascii+shift
                end
            elsif ascii.between?(97,122)
                if shift.positive?
                    ascii+shift > 122? (ascii+shift)-26 : ascii + shift
                else
                    ascii+shift < 97 ? (ascii+shift)+26 : ascii+shift
                end
            else
                ascii

            end

   
    end

    final_string = shifter.map{|y| y.chr}.join("")




    #convert everything into ascii, 
    #store in ascii_array(no wrap applied yet), factor in shift, convert back to str array
    #ascii_array = array_string.map {|element| (element.ord+shift).chr }
    ##convert back into a string
    #final_outcome = ascii_array.join("")

    #untouched working code
    #ascii_array = array_string.map {|element| (element.ord+shift).chr }
      #final_outcome = ascii_array.join("")


  
end

puts "Would you like to play with the Caesar Cipher?"
while gets.chomp != "no" do
    played_once = false

    if played_once == false 

        p "What string would you like to convert?"
        input_string = gets.chomp
        p "How much do you want to shift it?"
        input_shift = gets.chomp.to_i
        p caesar_cipher(input_string, input_shift)
        played_once = true
        puts "Would you like to play with the Caesar Cipher again?"
    
    else

        puts "Would you like to play with the Caesar Cipher?"
        p "What string would you like to convert?"
        input_string = gets.chomp
        p "How much do you want to shift it?"
        input_shift = gets.chomp.to_i
        p caesar_cipher(input_string, input_shift)
    end

 


  end


