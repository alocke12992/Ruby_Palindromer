# Create a new ruby script
# Add code to that ruby script to ask for user input and check to see if that user input is a palindrome or not
# https://en.wikipedia.org/wiki/Palindrome (Links to an external site.)
# DO NOT USE any STRING helper methods like .reverse this is a coding challenge to see how you would write all of the code to do this!
# Have you script go in a loop or a recursive method call so the user can keep checking palindromes

require 'pry' 
require 'colorize'

@hist = []

def welcome 
  if @hist == []
    puts "=" * 20 
    puts "Welcome to Palendromer"  
    puts "=" * 20 
    puts "Please give me a word or phrase to test"
  else 
    puts "would you like to continue? (Y/N)" 
    choice = gets.strip.downcase 
    if choice == "y"
      puts "History:"
      puts @hist
      puts "=" * 20 
      puts "give me your script"  
      puts "=" * 20 
    elsif choice == "n"
      puts "Thanks for using Palendromer"
      puts "Goodbye"
      exit 
    else 
      puts "Invalid entry, please try again".colorize(:red)
    end 
  end 
  user_input = gets.strip.downcase 
  @hist << user_input
  @str_arr = user_input.split("")
  reverse 
end 

def reverse
  @rev =[] 
  i = -1 
    @str_arr.each do 
        @rev << @str_arr[i]
        i -= 1
    end 
  check
end 

def check 
  rev = @rev.to_s
  rev_str = @rev.join
  user = @str_arr.to_s
  user_choice =@str_arr.join
  puts "your input was \"#{user_choice}\""
  puts "Backwards your input is \"#{rev_str}\""
  if rev  == user
    outcome = "Palendrome"
    puts "This is a palendrome".colorize(:green)
    
  else 
    outcome = "Not a palendrome"
    puts "Sorry, this is not a palendrome".colorize(:red)
  end 
  welcome 
end 

while true 
  welcome
end 