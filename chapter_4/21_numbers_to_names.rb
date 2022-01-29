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

language = chooseOne("Please slect your langauge (Por favor, elige tu idioma)",["English", "Español"])

if language == "English"
    month_number_prompt = "Please enter the number of the month"
    response = "The name of the month is "
    month_hash = {
        1=>"January",
        2=>"February",
        3=>"March",
        4=>"April",
        5=>"May",
        6=>"June",
        7=>"July",
        8=>"August",
        9=>"September",
        10=>"October",
        11=>"November",
        12=>"December"
    }
elsif language == "Español"
    month_number_prompt = "Por favor, elige el numero del mes"
    response = "El mes se llama "
    month_hash = {
        1=>"enero",
        2=>"febrero",
        3=>"marzo",
        4=>"abril",
        5=>"Mayo",
        6=>"Junio",
        7=>"Julio",
        8=>"agosto",
        9=>"Septiembre",
        10=>"Octubre",
        11=>"Noviembre",
        12=>"Diciembre"
    }
end

month_number = chooseOne(month_number_prompt,[1,2,3,4,5,6,7,8,9,10,11,12])
puts response + month_hash[month_number]