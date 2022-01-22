# Gather Info:
    #  Comparing one input to a known value is common enough, but you’ll often need to process a collection of inputs.

# Problem Statement:
    # Write a program that asks for three numbers. Check first to see that all numbers are different. If they’re not different, then exit the program. Otherwise, display the largest number of the three.

# Inputs (nouns):
    # three numbers
    
# processes (verbs):
    # asks
    # check for differences
    # exit program if same
    # display

# Outputs (nouns):
    # largest number

# TDD
    # Input:
        # Enter the first number: 1
        # Enter the second number: 51
        # Enter the third number: 2
    # Expected result:
        # The largest number is 51.

    # Actual result:

# Pseudocode:
    # prompt three whole numbers
    # check if numbers are all equal
    # if they are, return "all numbers are equal"
    # if different, compare using a <=> b etc
    # display largest number

# Constraints:
    # Write the algorithm manually. Don’t use a built-in function for finding the largest number in a list.

# Challenges:
    # Modify the program so that all entered values are tracked and the user is prevented from entering a number that’s already been entered.
    # Modify the program so that it asks for ten numbers instead of three.
    # Modify the program so that it asks for an unlimited number of numbers.

require '../useful_methods.rb'

def findLarger(a,b)
    order = a <=> b
    if order == -1
        larger = b
    else
        larger = a
    end
    return larger
end

first = getInteger("Enter the first number")
second = getInteger("Enter the second number")
third = getInteger("Enter the third number")

if first == second && second == third
    puts "All numbers are the same! (#{first})"
else
    larger = findLarger(first,second)
    puts findLarger(larger,third)
end



