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

string = ""

while string.length < 1
    puts "Please enter something."
    string = gets.chomp
end

length = string.length

puts "'#{string}' has #{length} characters.'"