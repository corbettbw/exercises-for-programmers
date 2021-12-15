# Gather Info:
    # Passwords are validated by comparing a user-provided value with a known value that’s stored. Either it’s correct or it’s not.

# Problem Statement:
    # Create a simple program that validates user login credentials. The program must prompt the user for a username and password. The program should compare the password given by the user to a known password. If the password matches, the program should display “Welcome!” If it doesn’t match, the program should display “I don’t know you.”

# Inputs (nouns):
    # username
    # password
    # known password

# processes (verbs):
    # prompt
    # compare
    # display

# Outputs (nouns):
    # "Welcome!"
    # "I don't know you."

# TDD
    # Input:
        # What is the password? 12345
        # OR
        # What is the password? abc$123

    # Expected result:
        # I don't know you.
        # OR
        # Welcome!

    # Actual result:

# Pseudocode:
    # prompt "What is your username?"
    # username = gets.chomp

    # prompt "What is the password?"
    # password = gets.chomp

    # if key[username] == password
    #   puts "Welcome!"
    # else
    #   puts "I don't know you"
    # end

# Constraints:
    # Use an if/else statement for this problem.
    # Make sure the program is case sensitive.

# Challenges:
    # Investigate how you can prevent the password from being displayed on the screen in clear text when typed.
    # Create a map of usernames and passwords and ensure the username and password combinations match.
    # Encode the passwords using Bcrypt and store the hashes in the map instead of the clear-text passwords. Then, when you prompt for the password, encrypt the password using Bcrypt and compare it with the value in your map.

require '../useful_methods.rb'
require 'io/console'
require 'bcrypt'

password_hash = BCrypt::Password.create("password")
correct_password = BCrypt::Password.new(password_hash)
pwdb = {"Username" => correct_password}

def login(credentials)
    puts "Please enter your username"
    username = gets.chomp

    puts "Please enter your password"
    password = STDIN.noecho(&:gets).chomp
    
    if credentials[username] == password
        puts "Welcome!"
    else
        puts "I don't know you!"
    end
end

puts login(pwdb)