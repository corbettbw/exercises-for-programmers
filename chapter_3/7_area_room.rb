# Gather Info:
    # When working in a global environment, you’ll have to present information
    # in both metric and Imperial units. And you’ll need to know when to do the
    # conversion to ensure the most accurate results.
# Problem Statement:
    # Create a program that calculates the area of a room. Prompt the user for the
    # length and width of the room in feet. Then display the area in both square
    # feet and square meters.
# Inputs (nouns):
    # length in feet
    # width in feet
# processes (verbs): 
    # calculates
    # prompt
    # display
# Outputs (nouns):  
    # area in both square feet and square meters
# TDD
    # Input:
        # What is the length of the room in feet? 15
        # What is the width of the room in feet? 20
    # Expected result:
        # You entered dimensions of 15 feet by 20 feet.
        # The area is 
            # 300 square feet
            # 27.871 square meters
    # Actual result
# Pseudocode:
    # length_in_feet = findInteger("length")
    # width_in_feet = findInteger("width")
    # conversion_rate = 0.09290304
    
    # area_in_square_feet = length_in_feet * width_in_feet
    # area_in_square_meters = area_in_square_feet * conversion_rate

    # puts "You entered dimensions of #{length_in_feet} feet by #{width_in_feet} feet."
    # puts "The area is #{area_in_square_feet} square feet"
    # puts "The area is #{area_in_square_meters} square meters"
# Constraints:
    # Keep the calculations separate from the output.
    # Use a constant to hold the conversion factor.
# Challenges
    # Revise the program to ensure that inputs are entered as numeric values.
    # Don’t allow the user to proceed if the value entered is not numeric.
    # Create a new version of the program that allows you to choose feet or
    # meters for your inputs.
    # Implement this program as a GUI program that automatically updates
    # the values when any value changes

require '../useful_methods.rb'

units = chooseOne("Please enter 'feet' or 'meters'",["feet","meters"])

conversion_rate = units == "feet" ? 0.09290304 : 10.76391

length = getInteger("length")
width = getInteger("width")

area = (length * width).round(3)
conversion = (area * conversion_rate).round(3)

puts "You entered dimensions of #{length} by #{width} #{units}."
puts "The area is #{area} square #{units}, or #{conversion} square #{units == "feet"? "meters" : "feet"}."
