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
    
def checkNumerical?(value)
    
end

puts "What is the first number?"
num1 = gets.chomp.to_f

puts "What is the second number?"
num2 = gets.chomp.to_f

puts "#{num1} + #{num2} = #{num1 + num2} \n#{num1} - #{num2} = #{num1 - num2} \n#{num1} * #{num2} = #{num1 * num2} \n#{num1} / #{num2} = #{num1 / num2}"