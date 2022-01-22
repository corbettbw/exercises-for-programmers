# Gather Info:
    # Many programs display information to the end user in one form but use a different form inside the program. For example, you may show the word Blue on the screen, but behind the scenes you’ll have a numerical value for that color or an internal value because you may need to represent the textual description in another language for Spanish-speaking visitors.

# Problem Statement:
    # Write a program that converts a number from 1 to 12 to the corresponding month. Prompt for a number and display the corresponding calendar month, with 1 being January and 12 being December. For any value outside that range, display an appropriate error message.

# Inputs (nouns):
    # number from 1 to 12
    # month
    # outside value

# processes (verbs):
    # prompt
    # convert
    # display

# Outputs (nouns):
    # calendar month
    # error message

# TDD
    # Input:
        # Please enter the number of the month: 3

    # Expected result:
        # The name of the month is March.

    # Actual result:

# Pseudocode:
    # prompt number of month
    # have hash with number => month key/value pairs
    # return month

# Constraints:
    # Use a switch or case statement for this program.
    # Use a single output statement for this program

# Challenges:
    # Use a map or dictionary to remove the switch statement from the program.
    # Support multiple languages. Prompt for the language at the beginning of the program.

require '../useful_methods.rb'

month_number = chooseOne("Please enter the number of the month",[1,2,3,4,5,6,7,8,9,10,11,12])

case month_number
when 1
    month = "January"
when 2
    month = "February"
when 3
    month = "March"
when 4
    month = "April"
when 5
    month = "May"
when 6
    month = "June"
when 7
    month = "July"
when 8
    month = "August"
when 9
    month = "September"
when 10
    month = "October"
when 11
    month = "November"
when 12
    month = "December"
else puts "Please enter a number between 1 and 12"
end

puts "The name of the month is #{month}"