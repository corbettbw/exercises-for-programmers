# Gather Info
# Problem Statement:
    # Create a program that prompts for a quote and an author. Display the
    # quotation and author as shown in the example output.

# Inputs (nouns):      quote, author
# processes (verbs):   prompts, displays
# Outputs (nouns):     quotation, author

# TDD
    # Inputs: 
        # "These aren't the droids you're looking for.",    "Hello, world!",        "Twas brillig."
        # Obi-Wan Kenobi,                                   "Corbett Winningham",   "james randi"
    # Expected Outputs:
        # What is the quote? 
        # Who said it? 
        # Obi-Wan Kenobi says, "These aren't the droids
            # you're looking for."                          
        # Corbett Winningham says, "Hello, world!"
        # James Randi says, "Twas brillig." 
    # Actual Outputs:

# Pseudocode:
    # prompt "What is the quote?"
    # quote = gets prompt
    # prompt "Who said it?"
    # author = gets prompt

    # puts author + 'says, "' + quote + '".'

# Constraints:
    # Use a single output statement to produce this output, using appropriate
        # string-escaping techniques for quotes.
    # If your language supports string interpolation or string substitution,
        # don’t use it for this exercise. Use string concatenation instead.

# Challenges
    # Modify this program so that instead of prompting for quotes from
        # the user, you create a structure that holds quotes and their associated
        # attributions and then display all of the quotes using the format in the
        # example.

number_of_quotes = ""
again = "y"
list_of_quotes = {}

while number_of_quotes.class != Integer || number_of_quotes <= 0
    puts "How many quotes would you like to record?"
    number_of_quotes = gets.chomp.to_i

    if number_of_quotes <= 0
        puts "Please enter a positive, non-zero number."
    end
end

number_of_quotes.times do
    puts "What is the quote?"
    quote = gets.chomp.capitalize
    
    puts "Who said it?"
    author = gets.chomp
    
    author = author.split.each { |name| name.capitalize! }.join(" ")
    
    list_of_quotes[author] = quote
end

while again == "y"
    puts "Search for a quote by author, full name"
    author = gets.chomp.split.each { |name| name.capitalize! }.join(" ")
    quote = list_of_quotes[author]

    if list_of_quotes[author] == nil
        puts "Sorry, could not find that author, continue? (y/n)"
        again = gets.chomp
    else puts author + ' says, "' + quote + '"'
        puts "Would you like to go again? (y/n)"
        again = gets.chomp
    end
end

