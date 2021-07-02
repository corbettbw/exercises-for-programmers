# Gather Info
# Problem Statement:
    # Create a program that prompts for a quote and an author. Display the
    # quotation and author as shown in the example output.

# Inputs (nouns):      quote, author
# processes (verbs):   prompts, displays
# Outputs (nouns):     quotation, author

# TDD
    # Inputs: 
        # These aren't the droids you're looking for.
        # Obi-Wan Kenobi
    # Expected Outputs:
        # What is the quote? 
        # Who said it? 
        # Obi-Wan Kenobi says, "These aren't the droids
            # you're looking for."
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

puts "What is the quote?"
quote = gets.chomp.capitalize

puts "Who said it?"
author = gets.chomp

author = author.split.each { |name| name.capitalize! }.join(" ")

if quote[-1] == "."
    quote.slice!(".")
end

puts author + ' says, "' + quote + '".'
