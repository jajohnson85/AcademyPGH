puts "What is your message?"
message = gets.chomp

split = message.chars.to_a
puts split.to_s

alpha = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
    'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'w', 'x',
    'y', 'z']

morse = [".-", "-...", "-.-.", "-..", ".", "..-.",
    "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.",
    "--.-", ".-.", ".-.", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."]

for i in 0..split.length-1
    for j in 0..alpha.length-1
        if split[i] == alpha[j]
            print morse[j] + " "
end
end
end

puts "\nWould you like to translate morse code \nto the alphabet, yes or no?"
input = gets.chomp.downcase

if input == "yes"

puts "Enter each morse code character separated by a comma with no space \nin between."

morseinput = gets.chomp.split(',')

for k in 0..(morseinput.length-1)
    for l in 0..(morse.length-1)
        if morseinput[k] == morse[l]
            print alpha[l] + "\n"
end
end
end

else
    puts "Why do you hate morse code? Beep boop boop. Bye"
    end
