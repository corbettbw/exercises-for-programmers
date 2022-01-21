# Gather Info:
    # More complex programs may have decisions nested in other decisions, so that when one decision is made, additional decisions must be made.

# Problem Statement:
    # Create a tax calculator that handles multiple states and multiple counties within each state. The program prompts the user for the order amount and the state where the order will be shipped.

    # For Wisconsin residents, prompt for the county of residence.
    # For Eau Claire county residents, add an additional 0.005 tax.
    # For Dunn county residents, add an additional 0.004 tax.

    # Illinois residents must be charged 8% sales tax with no additional countylevel charge. All other states are not charged tax. The program then displays the tax and the total for Wisconsin and Illinois residents but just the total for everyone else.

# Inputs (nouns):
    # states
    # order amount
    # county

# processes (verbs):
    # prompt
    # add
    # charge
    # display

# Outputs (nouns):
    # tax
    # total

# TDD
    # Input:
        # What is the order amount? 10
        # What state do you live in? Wisconsin

    # Expected result:
            # The tax is $0.50.
            # The total is $10.50.

    # Actual result

# Pseudocode:
# Constraints:
    # Ensure that all money is rounded up to the nearest cent. 
    # Use a single output statement at the end of the program to display the program results.

# Challenges:
    # Add support for your state and county.
    # Allow the user to enter a state abbreviation and county name in upper, lower, or mixed case.
    # Allow the user to also enter the state’s full name in upper, lower, or mixed case.
    # Implement the program using data structures to avoid nested if statements.

require '../useful_methods.rb'

taxRate = 0
county = "unspecified"
order_amount = getFloat("What is the order amount?")
state = chooseOne("What state do you live in?",["Alabama",
"Alaska",
"Arizona",
"Arkansas",
"California",
"Colorado",
"Connecticut",
"Delaware",
"Florida",
"Georgia",
"Hawaii",
"Idaho",
"Illinois",
"Indiana",
"Iowa",
"Kansas",
"Kentucky",
"Louisiana",
"Maine",
"Maryland",
"Massachusetts",
"Michigan",
"Minnesota",
"Mississippi",
"Missouri",
"Montana",
"Nebraska",
"Nevada",
"New Hampshire",
"New Jersey",
"New Mexico",
"New York",
"North Carolina",
"North Dakota",
"Ohio",
"Oklahoma",
"Oregon",
"Pennsylvania",
"Rhode Island",
"South Carolina",
"South Dakota",
"Tennessee",
"Texas",
"Utah",
"Vermont",
"Virginia",
"Washington",
"West Virginia",
"Wisconsin",
"Wyoming"
    ])

if state == "Wisconsin"
    county = getString("What county do you live in?").capitalize_words
end

if county == "Eau Claire"
    taxRate = 0.005
elsif county == "Dunn"
    taxRate = 0.004
elsif state == "Illinois"
    taxRate = 0.08
end

if taxRate != 0
    puts "The tax is $%#.2f." % [(taxRate * order_amount)]
end

puts "The total is $%#.2f" % [(order_amount + taxRate * order_amount)]
