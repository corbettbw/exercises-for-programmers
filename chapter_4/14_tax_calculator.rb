# Gather Info:
    # You don’t always need a complex control structure to solve simple problems. Sometimes a program requires an extra step in one case, but in all other cases there’s nothing to do.

# Problem Statement:
    # Write a simple program to compute the tax on an order amount. The program should prompt for the order amount and the state. If the state is “WI,” then the order must be charged 5.5% tax. The program should display the subtotal, tax, and total for Wisconsin residents but display just the total for non-residents.

# Inputs (nouns):      
    # order amount
    # state

# processes (verbs):   
    # prompt
    # charged 5.5% if state is WI
    # display

# Outputs (nouns):
    # subtotal
    # tax (if WI)
    # total

# TDD
    # Input:
        # What is the order amount? 10
        # What is the state? WI

    # Expected result:
        # The subtotal is $10.00.
        # The tax is $0.55.
        # The total is $10.55.

        # OR

        # The total is $10.00

    # Actual result
# Pseudocode:
    # prompt order amount
    # prompt state

    # if state == WI
        # total = subtotal + subtotal * 0.55
    # else total = subtotal
    # end

# Constraints:
    # Implement this program using only a simple if statement—don’t use an else clause. 
    # Ensure that all money is rounded up to the nearest cent.
    # Use a single output statement at the end of the program to display the program results.

# Challenges:
    # Allow the user to enter a state abbreviation in upper, lower, or mixed case.
    # Also allow the user to enter the state’s full name in upper, lower, or mixed case.

require '../useful_methods.rb'

total = getFloat("What is the order amount?")
state = getString("What is the state?").upcase
tax_rate = 0.055
end_result = "The total is $"

if state == "WI" || state == "WISCONSIN"
    end_result = "The subtotal is $#{total}\nThe tax is $#{total * tax_rate.round(3)}\n" + end_result
    total += total * tax_rate
end

puts end_result + total.round(2).to_s
