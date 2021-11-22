# Gather Info:
    # Computing simple interest is a great way to quickly figure out whether an investment has value. It’s also a good way to get comfortable with explicitly coding the order of operations in your programs.

# Problem Statement:
    # Create a program that computes simple interest. Prompt for the principal
    # amount, the rate as a percentage, and the time, and display the amount
    # accrued (principal + interest).  A = P(1 + r*t)

# Inputs (nouns):
    # principle
    # rate as percentage
    # amount accrued (principal + interest)
# processes (verbs):
    # prompt for values
    # display amount accrued
# Outputs (nouns):
    # accrued

# TDD
    # Input:
        # Enter the principal: 1500
        # Enter the rate of interest: 4.3
        # Enter the number of years: 4
    # Expected result:
        # After 4 years at 4.3%, the investment will be worth $1758.
    # Actual result

# Pseudocode:

# Constraints:
    # Prompt for the rate as a percentage (like 15, not .15). Divide the input
    # by 100 in your program.
    # Ensure that fractions of a cent are rounded up to the next penny.
    # Ensure that the output is formatted as money.
# Challenges

def getFloat(prompt)
    begin
        puts prompt
        Float(gets.chomp)
    rescue ArgumentError => error
        puts "Please use numerals"
        retry
    end
end

principal = getFloat("Enter the principal")
interest = getFloat("Enter the percentage rate of interest (5% should be 5)")
time = getFloat("Enter the time in number of years")

amount_accrued = principal * (1 + (interest / 100) * time)

puts "After %#.2f years at %#.2f%%, the investment will be worth $%#.2f." % [time,interest,amount_accrued]