# Gather Info:
    # You’ll often need to determine which part of a program is run based on user input or other events.

# Problem Statement:
    # Create a program that converts temperatures from Fahrenheit to Celsius or from Celsius to Fahrenheit. Prompt for the starting temperature. The program should prompt for the type of conversion and then perform the conversion. The formulas are:
        # C = (F - 32) * 5/9
        # F = (C * 9/5) + 32

# Inputs (nouns):
    # starting temperature
    
# processes (verbs):
    # prompt
    # convert

# Outputs (nouns):
    # conversion temperature

# TDD
    # Input:
        # Press C to convert from Fahrenheit to Celsius. 
        # Press F to convert from Celsius to Fahrenheit. 
        # Your choice: C 
        # Please enter the temperature in Fahrenheit: 32

    # Expected result:
        # The temperature in Celsius is 0

    # Actual result

# Pseudocode:
    # unit_to = chooseOne("Pick the unit you wish to convert to",["C","F"])
    # starting_temp = getFloat("Please enter the temperature in #{unit_to == "C" ? "Fahrenheit" : "Celsius"}")

    # def celsiusToFahrenheit(starting_temp)
        # F = (starting_temp * 9/5) + 32
    # end

    # def fahrenheitToCelsius(starting_temp)
        # C = (starting_temp - 32) * 5/9
    # end

    # converted_temp = unit_to == "F" ? celsiusToFahrenheit(starting_temp) : fahrenheitToCelsius(starting_temp)

    # puts "The temperature in #{unit_to} is #{converted_temp}"


# Constraints:
    # Ensure that you allow upper or lowercase values for C and F.
    # Use as few output statements as possible and avoid repeating output strings.

# Challenges:
    # Revise the program to ensure that inputs are entered as numeric values. Don’t allow the user to proceed if the value entered is not numeric. 

    # Break the program into functions that perform the computations. 
    
    # Implement this program as a GUI program that automatically updates the values when any value changes 
    
    # Modify the program so it also supports the Kelvin scale

require '../useful_methods.rb'

def celsiusToFahrenheit(starting_temp)
    fahrenheit = (starting_temp * 9/5) + 32
end

def fahrenheitToCelsius(starting_temp)
    celsius = (starting_temp - 32) * 5/9
end
    
unit_to = chooseOne("Pick the unit you wish to convert to",["C","F"])
starting_temp = getFloat("Please enter the temperature in #{unit_to == "C" ? "Fahrenheit" : "Celsius"}")
converted_temp = unit_to == "F" ? celsiusToFahrenheit(starting_temp) : fahrenheitToCelsius(starting_temp)

puts "The temperature in #{unit_to} is #{converted_temp}"