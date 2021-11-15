# Gather Info
# Problem Statement:
    # Create a program that prompts for your name and prints a greeting using your name.

# Inputs (nouns):       name
# processes (verbs):    prompts, prints 
# Outputs (nouns):      greeting using name
# TDD
    # Inputs:           "Corbett"
    # Expected results: "Hello, Corbett, nice to meet you!"
    # Actual results:   "Hello, Corbett, nice to meet you!"

# Pseudocode:
    # print "What is your name?"
    # prompt name
    # return "hello, {name}, nice to meet you!"
    # end

# Constraints:
    # Round 1: Keep the input, concatenation, and output separate.
    # Round 2: No variables
    # Round 3: Different greetings for different people

class String
    def has_numeral?
        self.split('').any? { |character| character.to_i.to_s == character}
    end
end

def getString(prompt)
    begin
        puts prompt
        string = String(gets.chomp.capitalize)
        raise if string.has_numeral? || string.empty?
    rescue
        puts "Please make an entry, and make sure it's actual letters, Elon!"
        retry
    end
    return string
end

name = getString("What is your name?")

greeting_one = "Hello, #{name}, nice to meet you!"
greeting_two = "What's poppin', #{name}?"
greeting_three = "Hi diddly ho, #{name}-ino!"

if name[0] <= "J"
    puts greeting_one
elsif name[0] > "T"
    puts greeting_three
else puts greeting_two
end
