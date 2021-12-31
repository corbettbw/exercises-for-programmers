# Gather Info:
    # You’ll often need to see if one value is within a certain range and alter the flow of a program as a result.

# Problem Statement:
    # Create a program to calculate the body mass index (BMI) for a person using the person’s height in inches and weight in pounds. The program should prompt the user for weight and height. Calculate the BMI by using the following formula: BMI = (weight/(height * height)) * 703

    # If the BMI is between 18.5 and 25, display that the person is at a normal weight. If they are out of that range, tell them if they are underweight or overweight and tell them to consult their doctor

# Inputs (nouns):
    # weight
    # height

# processes (verbs):
    # calculate
    # prompt
    # print statement

# Outputs (nouns):
    # BMI
    # Statement

# TDD
    # Input:
        # height
        # weight

    # Expected result:
        # "Your BMI is 19.5"
        # "You are within the ideal range"

        # or

        # "Your BMI is 32.5"
        # "You are overweight. You should see your doctor."
    # Actual result

# Pseudocode:

# Constraints:
    
# Challenges:
    # Make the user interface accept height and weight in Imperial or metric units. You’ll need a slightly different formula for metric units. 

    # For Imperial measurements, prompt for feet and inches and convert feet to inches so the user doesn’t have to. 

    # Use a GUI interface with sliders for height and weight. Update the user interface on the fly. Use colors as well as text to indicate health.
    
require '../useful_methods.rb'

weight = getFloat("What is your weight in pounds?")
height = getFloat("What is your height in inches?")

BMI = (weight/(height ** 2)) * 703

puts "Your BMI is #{BMI}." 
puts BMI > 18.5 && BMI < 25 ? "You are within the ideal range." : "You are outside of the accepted range, please see a doctor"