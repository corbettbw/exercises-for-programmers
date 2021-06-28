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

puts "What is your name?"
puts "Hello, #{gets.chomp}, nice to meet you!"


