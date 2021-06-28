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
    # Keep the input, concatenation, and output separate.

puts "What is your name?"
name = gets.chomp

greeting = "Hello, #{name}, nice to meet you!"

puts greeting

