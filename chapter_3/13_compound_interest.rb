# Gather Info:
    # Simple interest is something you use only when making a quick guess. Most investments use a compound interest formula, which will be much more accurate. And this formula requires you to incorporate exponents into your programs

# Problem Statement:
    # Write a program to compute the value of an investment compounded over time. The program should ask for the starting amount, the number of years to invest, the interest rate, and the number of periods per year to compound. The formula you’ll use for this is A = P(1 + r/n)**(nt) where:
        # P is the principal amount.
        # r is the annual rate of interest.
        # t is the number of years the amount is invested.
        # n is the number of times the interest is compounded per year.
        # A is the amount at the end of the investment.

# Inputs (nouns):
    # principal
    # time in years
    # interest rate
    # number of periods per year

# processes (verbs):   
    # ask for values
    # compute the value

# Outputs (nouns):   
        # relevant info and the total value

# TDD
    # Input:
        # What is the principal amount? 1500
        # What is the rate? 4.3
        # What is the number of years? 6
        # What is the number of times the interest  is compounded per year? 4

    # Expected result:
        # $1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84.

    # Actual result
# Pseudocode:
# Constraints:
    # Prompt for the rate as a percentage (like 15, not .15). Divide the input by 100 in your program.
    # Ensure that fractions of a cent are rounded up to the next penny.
    # Ensure that the output is formatted as money.

# Challenges
    # Ensure that all of the inputs are numeric and that the program will not let the user proceed without valid inputs. 

    # Create a version of the program that works in reverse, so you can determine the initial amount you’d need to invest to reach a specific goal. 

    # Implement this program as a GUI app that automatically updates the values when any value changes.

require '../useful_methods.rb'

def calculateAccrued(principal,rate_of_interest,time,number_of_compound_periods)
    accrued = principal * (1 + rate_of_interest * 0.01 / number_of_compound_periods) ** (number_of_compound_periods * time)
end

def calculatePrincipal(accrued,rate_of_interest,time,number_of_compound_periods)
    principal = accrued * (1 / (1 + rate_of_interest * 0.01 / number_of_compound_periods) ** (number_of_compound_periods * time))
end

finalValue = chooseOne("Type \"A\" to calculate an Accrued amount starting with a set principal, or \"P\" to calculate your starting Principal, given a savings goal.",["A","P"])

knownValue = finalValue == "A" ? getFloat("Enter how much you're starting with") : getFloat("Enter the amount that you would like to accrue over time.")

rate_of_interest = getFloat("Enter the percentage rate of interest (5% should be 5)")
time = getFloat("Enter the time in number of years")
number_of_compound_periods = getFloat("Enter the number of times the interest is compounded per year")

if finalValue == "A"
    accrued = calculateAccrued(knownValue,rate_of_interest,time,number_of_compound_periods)

    puts "$%#.2f invested at %#.2f%% for %#.2f #{time == 1 ? "year" : "years"} compounded %#.2f times per year is $%#.2f." % [knownValue,rate_of_interest,time,number_of_compound_periods,accrued]
else
    principal = calculatePrincipal(knownValue,rate_of_interest,time,number_of_compound_periods)

    puts "In order to get $%#.2f with an interest of %#.2f%% over %#.2f #{time == 1 ? "year" : "years"} compounded %#.2f times per year, you need to invest $%#.2f" % [knownValue,rate_of_interest,time,number_of_compound_periods,principal]
end


