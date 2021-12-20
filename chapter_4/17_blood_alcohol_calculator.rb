# Gather Info:
    # Sometimes you have to perform a more complex calculation based on some provided inputs and then use that result to make a determination.

# Problem Statement:
    # Create a program that prompts for your weight, gender, number of drinks, the amount of alcohol by volume of the drinks consumed, and the amount of time since your last drink. Calculate your blood alcohol content (BAC) using this formula: BAC = (A * 5.14 / W * r) - 0.015 * H
        # where A = total alcohol consumed
        #       W = body weight in pounds
        #       r = the alcohol distribution ratio
        #           0.73 for men
        #           0.66 for women
        #       H = hours since last drink
        # Display whether it's legal to drive by comparing BAC to 0.08%

# Inputs (nouns):
    # weight
    # gender
    # number of drinks
    # amount of alcohol by volume of drinks consumed
    # time since last drink
    
# processes (verbs): 
    # calculate
    # compare
    # display

# Outputs (nouns):
    # BAC
    # Whether it's legal to drive

# TDD
    # Input:
    # Expected result:
    # Actual result

# Pseudocode:
    # weight = getFloat("What is your weight?")
    # sex = chooseOne("What is your sex?",["male","female","other"])
    # drinks_consumed = getInteger("How many 12 oz beers have you had?")
    # abv = getFloat("What was the average alcohol percent by volume?") / 100
    # time = getFloat("How long (in minutes) has it been since your last drink?")
    
    # total_alcohol_in_oz = drinks_consumed * 12 * abv
    # if sex == "male"
        # ratio_of_alcohol_distribution = 0.73
    # if sex == "female"
        # ratio_of_alcohol_distribution = 0.66
    # else
        # ratio_of_alcohol_distribution = (0.73 + 0.66) / 2
    # end

    # bac = (total_alcohol_in_oz * 5.14 / weight * ratio_of_alcohol_distribution) - 0.015 * time

    # bac >= 0.08 ? "It is not legal for you to drive" : "You can legally drive"

# Constraints:
    # Prevent user from entering non-numeric values

# Challenges:
    # Handle metric units

    # Look up the legal BAC limit by state and prompt for the state. Display a message that states whether or not it’s legal to drive based on the computed BAC.

    # Develop this as a mobile application that makes it easy to record each drink, updating the BAC each time a drink is entered.

 # weight = getFloat("What is your weight?")
    # sex = chooseOne("What is your sex?",["male","female","other"])
    # drinks_consumed = getInteger("How many 12 oz beers have you had?")
    # abv = getFloat("What was the average alcohol percent by volume?") / 100
    # time = getFloat("How long (in minutes) has it been since your last drink?")
    

require '../useful_methods.rb'

weight = getFloat("What is your weight in pounds?")
sex = chooseOne("What is your sex?",["male","female","other"])
drinks_consumed = getInteger("How many 12 oz beers have you had?")
abv = getFloat("What was the average alcohol percent by volume?") / 100
time = getFloat("How long (in minutes) has it been since your last drink?") / 60

total_alcohol_in_oz = drinks_consumed * 12 * abv

if sex == "male"
    ratio_of_alcohol_distribution = 0.73
elsif sex == "female"
    ratio_of_alcohol_distribution = 0.66
else
    ratio_of_alcohol_distribution = (0.73 + 0.66) / 2
end

bac = (total_alcohol_in_oz * 5.14 / weight * ratio_of_alcohol_distribution) - 0.015 * time

puts "\nYou've had #{drinks_consumed} beers at #{abv * 100}% by volume."
puts "It's been #{time} hours since your last drink."
puts "Your BAC is #{bac}." 

if bac >= 0.08
    puts "It is not legal for you to drive\n" 
else 
    puts "You can legally drive\n"
end