# Gather Info
    # what should count as a character?
    # should I join the letters on white space?
    # Should I only look at unique characters?

# Problem Statement:
    # Create a program that prompts for an input string and displays output that
    # shows the input string and the number of characters the string contains.
# Inputs (nouns):       input string,
# processes (verbs):    prompts, counts, displays
# Outputs (nouns):      input string, number of characters   

# TDD
    # Inputs:               "homer",                    "Sphynx of black quartz judge my vow"     
    # Expected results:     "homer has 5 characters",   
    # Actual results:       "homer has 5 characters"

# Pseudocode:
    # prompt string
    # length = string.length
    # print "string has length characters"


# Constraints:
    # contains original string
    # uses single output statement to construct the output
    # use a built-in function of the programming language to determine the length of the string

# Challenges
    # Round 1: enforce correct data input standards.

# def getString(prompt)
#     begin
#         puts prompt
#         string = gets.chomp
#         raise if string.empty?
#     rescue
#         puts "You must enter something to continue"
#         retry
#     end
#     string
# end
# string = getString("Please enter something")

string = prompt = ""

while string.empty?
    prompt = prompt.empty? == true ? "Please enter something" : "you must enter something to continue."
    puts prompt 
    string = gets.chomp
end


puts "'#{string}' has #{string.length} characters.'"
