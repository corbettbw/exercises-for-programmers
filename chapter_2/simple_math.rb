# Gather Info
    
# Problem Statement:
    # Write a program that prompts for two numbers. Print the sum, difference,
    # product, and quotient of those numbers as shown in the example output:

# Inputs (nouns):       2 numbers     
# processes (verbs):    prompts, prints
# Outputs (nouns):      sum, difference, product, quotient   

# TDD
    # Input: 
        # 10, 5
    # Expected result: 
        # 10 + 5 = 15
        # 10 - 5 = 5
        # 10 * 5 = 50
        # 10 / 5 = 2
    # Actual result: 

# Pseudocode:
    # query "what is the first number?"
    # query "what is the second number?"
    # puts "#{num1} + #{num2} = #{sum} LINE BREAK #{num1} - #{num2} = #{diff} LINE BREAK #{num1} * #{num2} = {product} LINE BREAK #{num1} / #{num2} = #{quotient}"
# Constraints:
    # will be strings to begin
    # keep inputs and outputs separate from numerical conversions and other processing
    # generate a single output statement with linebreaks in the appropriate spots

# Challenges
    # all terms must be entered in a numerical value

require '../useful_methods.rb'

num1 = getFloat("What is the first number?")
num2 = getFloat("What is the second number?")

sum         = num1 + num2
difference  = num1 - num2
product     = num1 * num2
quotient    = num1 / num2

puts "#{num1} + #{num2} = #{sum} \n#{num1} - #{num2} = #{difference} \n#{num1} * #{num2} = #{product} \n#{num1} / #{num2} = #{quotient}"