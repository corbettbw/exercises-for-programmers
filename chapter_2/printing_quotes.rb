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

def getInteger(prompt)
    begin
        puts prompt
        integer = Integer(gets.chomp)
        raise if integer < 0
    rescue 
        puts "Please use positive numbers"
        retry
    end
    return integer    
end

def getQuote
    puts "What is the quote?"
    quote = gets.chomp
    puts "Who said it?"
    author = gets.chomp
    return [quote,author]
end

number_of_quotes = 1
quote_attribution_array = []
number_of_quotes = getInteger("How many quotes would you like to add?")

while quote_attribution_array.length < number_of_quotes
    quote_attribution_array.push getQuote
end

quote_attribution_array.each do |author_and_quote|
    puts ""
    puts author_and_quote[1] + " says " + "\"" + author_and_quote[0] + "\""
end
