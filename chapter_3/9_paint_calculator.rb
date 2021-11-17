# Gather Info:
    # Sometimes you have to round up to the next number rather than follow standard rounding rules.
# Problem Statement:
    # Calculate gallons of paint needed to paint the ceiling of a room. Prompt for the length and width, and assume one # gallon covers 350 square feet. Display the number of gallons needed to paint the ceiling as a whole umber.
# Inputs (nouns):
    # length
    # width
# processes (verbs):   
    # calculate gallons
# Outputs (nouns):     
    # display number of gallons as a whole number 
# TDD
    # Input: 
        # length: 23 
        # width: 15
    # Expected result: 
        # You will need to purchase 2 gallons of paint to cover 360 square feet.
    # Actual result
# Pseudocode:
    # length = getInteger("length")
    # width = getInteger("width")

    # area = length * width
    # gallons = (area / 350.0).ceil

    # puts "You will need to purchase #{gallons} gallons of paint to cover #{area} square feet." 

# Constraints:
    # Use a constant to hold the conversion rate.
    # Ensure that you round up to the next whole number.
# Challenges
    # Revise the program to ensure that inputs are entered as numeric values.
    # Don’t allow the user to proceed if the value entered is not numeric.
    # Implement support for a round room.
    # Implement support for an L-shaped room.
    # Implement a mobile version of this app so it can be used at the
    # hardware store.


require 'active_support/inflector'

def getInteger(prompt)
    begin
        puts prompt
        integer = Integer(gets.chomp)
    rescue ArgumentError => error
        puts "Please use numerals"
        retry
    end
    return integer    
end

conversion_rate = 350.0
length = getInteger("length")
width = getInteger("width")

area = length * width
gallons = (area / conversion_rate).ceil

puts "You will need to purchase #{gallons} #{"gallon".pluralize(gallons)} of paint to cover #{area} square #{area == 1? "foot" : "feet"}." 
    