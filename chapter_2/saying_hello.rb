# Gather Info
# Problem Statement:
    # Create a program that prompts for your name and prints a greeting using your name.

# Inputs (nouns):       name
# processes (verbs):    prompts, prints 
# Outputs (nouns):      greeting using name
# TDD
    # Inputs:           "Corbett"
    # Expected results: "Hello, Corbett, nice to meet you!"
    # Actual results:   "Hello, Corbett, nice to meet you!"

# Pseudocode:
    # print "What is your name?"
    # prompt name
    # return "hello, {name}, nice to meet you!"
    # end

# Constraints:
    # Round 1: Keep the input, concatenation, and output separate.
    # Round 2: No variables
    # Round 3: Different greetings for different people


puts "What is your name?"
name = gets.chomp.capitalize

greeting_one = "Hello, #{name}, nice to meet you!"
greeting_two = "What's poppin', #{name}?"
greeting_three = "Hi diddly ho, #{name}-ino!"

if name[0] <= "J"
    puts greeting_one
elsif name[0] > "T"
    puts greeting_three
else puts greeting_two
end
