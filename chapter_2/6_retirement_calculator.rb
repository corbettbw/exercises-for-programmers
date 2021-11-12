# Gather Info
# Problem Statement:
    # Your computer knows what the current year is, which means you can incorporate that into your programs. You just have to figure out how your programming language can provide you with that information. Create a program that determines how many years you have left until retirement and the year you can retire. It should prompt for your current age and the age you want to retire and display the output as shown in the example that follows.
# Inputs (nouns): 
    # current year, current age, age to retire    
# processes (verbs):
    # determines how many years to retire, prompt for age, prompt for retirement age
# Outputs (nouns):
    # display output
# TDD
    # Input: 
        # 25, 65
    # Expected result: 
    #   You have 40 years left until you can retire.
    #   It's 2015, so you can retire in 2055.
    # Actual result

# Pseudocode:
    # prompt "What is your current age?"
    # current_age = gets.chomp.to_i
    # prompt "At what age would you like to retire?"
    # retirement_age = gets.chomp.to_i
    # years_to_retirement = retirement_age - current_age
    # retirement_date = this_year + years_to_retirement
    # puts "You have #{years_to_retirement} years left until you can retire. \n
    #   It's #{this_year}, so you can retire in #{retirement_date}."
# Constraints:
    # convert the input to numerical data before doing any math.
    # Don’t hard-code the current year into your program.
# Challenges
    # Handle situations where the program returns a negative number by
    # stating that the user can already retire.

 puts "What is your current age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_to_retirement = retirement_age - current_age
this_year = Time.now.year
retirement_date = this_year + years_to_retirement

puts "\n You have #{years_to_retirement} years left until you can retire. \n It's #{this_year}, so you can retire in #{retirement_date}."