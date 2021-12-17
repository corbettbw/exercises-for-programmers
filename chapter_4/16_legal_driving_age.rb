# Gather Info:
    # You can test for equality, but you may need to test to see how a number compares to a known value and display a message if the number is too low or too high

# Problem Statement:
    # Write a program that asks the user for their age and compare it to the legal driving age of sixteen. If the user is sixteen or older, then the program should display “You are old enough to legally drive.” If the user is under sixteen, the program should display “You are not old enough to legally drive.”

# Inputs (nouns):
    # age
    # legal driving age of 16

# processes (verbs):   
    # ask
    # compare
    # display

# Outputs (nouns):
    # "You are old enough to legally drive."
    # "You are not old enough to legally drive."

# TDD
    # Input:
        # What is your age? 15
        # What is your age? 35

    # Expected result:
        # You are not old enough to legally drive.
        # You are old enough to legally drive.

    # Actual result

# Pseudocode:
    # age = getInteger("What is your age?")

    # puts age >= 16 ? "you are old enough to legally drive." : "You are not old enough to legally drive."

# Constraints:
    # Use a single output
    # Use a ternary operator to write this program. If your language doesn’t support a ternary operator, use a regular if/else statement, and still use a single output statement to display the message.

# Challenges:
    # If the user enters a number that’s less than zero or enters non-numeric data, display an error message that asks the user to enter a valid age.
    # Instead of hard-coding the driving age in your program logic, research driving ages for various countries and create a lookup table for the driving ages and countries. Prompt for the age, and display which countries the user can legally drive in.

require '../useful_methods.rb'

driving_age_by_country = []
legal_driving_countries = ""

File.open("../sample_data.txt","r") do |file|
    file.each_line do |line|
        country = line.split(' ')
        if country.length > 0 && country.last.to_i.to_s != country.last
            driving_age_by_country.push [country.join(' '), 18]
        elsif country.length > 0 
            age = country.pop
            driving_age_by_country.push [country.join(' '), age.to_i]
        end
    end
end

prompt = "What is your age?"

while (age ||= -1) < 0
    age = getInteger(prompt)
    prompt = "Please enter a valid age." if age < 0
end

driving_age_by_country.each do |country|
    if country.last <= age
        legal_driving_countries += "#{country.first} (#{country.last})\n"
    end
end

puts legal_driving_countries.length > 0 ? "You are old enough to legally drive in all these countries: \n#{legal_driving_countries}" : "I'm sorry, you're not old enough to drive anywhere!"
