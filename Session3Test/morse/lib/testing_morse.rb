class Morse_convert
@Alpha_to_morse = {

	"a" => ".-",

	"b" => "-...",

	"c" => "-.-.",

	"d" => "-..",

	"e" => ".",

	"f" => "..-.",

	"g" => "--.",

	"h" => "....",

	"i" => "..",

	"j" => ".---",

	"k" => "-.-",

	"l" => ".-..",

	"m" => "--",

	"n" => "-.",

	"o" => "---",

	"p" => ".--.",

	"q" => "--.-",

	"r" => ".-.",

	"s" => "...",

	"t" => "-",

	"u" => "..-",

	"v" => "...-",

	"w" => ".--",

	"x" => "-..-",

	"y" => "-.--",

	"z" => "--..",

	" " => "   ",

	"1" => ".----",

	"2" => "..---",

	"3" => "...--",

	"4" => "....-",

	"5" => ".....",

	"6" => "-....",

	"7" => "--...",

	"8" => "---..",

	"9" => "----.",

	"0" => "-----"

}



def to_morse(message)

  letters = message.split("")

  @word_in_morse []

  letters.each do |current_letter|

    word_in_morse << Alpha_to_morse[current_letter] + " "

  end

  @final_morse = word_in_morse.join

end



def to_alpha(message)

  words = message.split("   ")

  message_in_alpha = ""

  words.each do |current_word|

    letters = current_word.split(" ")

    letters.each do |current_letter|

      message_in_alpha += Alpha_to_morse.key(current_letter)

    end

    message_in_alpha += " "

  end

  message_in_alpha

end
end
