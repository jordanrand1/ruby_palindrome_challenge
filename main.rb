require 'colorize'

def test_choice(input)
  i = input.length
  new_string = ''
  while i > 0 do
    i -= 1
    new_string += input[i] 
  end
  puts new_string
  if new_string.strip == input.strip
    puts "You have entered a palindrome!".colorize(:green)
    menu
  else
    puts "That was not a palindrome.".colorize(:red)
    menu
  end
end

def menu
  puts "Please enter your text to see if it's a palindrome."
  testChoice(gets.strip.to_s.delete(' ').downcase)
end

menu