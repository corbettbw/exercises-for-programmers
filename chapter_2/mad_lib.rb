# Gather Info
    # A mad lib is a simple game where you create a story using a template, and assign nouns, verbs, adjectives, etc to create a silly story.
    
# Problem Statement:
    # Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
    # and an adjective and injects those into a story that you create.

# Inputs (nouns):       noun, verb, adverb, adjective 
# processes (verbs):    prompts, injects, prints
# Outputs (nouns):      story

# TDD
    # Inputs:           
        # dog, walk, blue, quickly
        # airplane, crash, hard, violently
    # Expected Results: 
        # Do you walk your blue dog quickly? That's hilarious!
        # Do you crash your hard airplane violently? That's hilarious!

    # Actual Results:   
        # Do you walk your blue dog quickly? That's hilarious!
        # Do you crash your hard airplane violently? That's hilarious!

# Pseudocode:
    # prompt 'enter a noun, verb, adverb, adjective'
    # gets noun, verb, adverb, adjective
    # puts 'do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!'

# Constraints:
    # Use a single output statement for this program.
    # If your language supports interpolation or substitution, use that to build output.

# Challenges

puts "Please enter a noun, verb, adverb, and adjective."
puts "noun:"
noun = gets.downcase.chomp
puts "verb:"
verb = gets.downcase.chomp
puts "adverb:"
adverb = gets.downcase.chomp
puts "adjective:"
adjective = gets.downcase.chomp

madLib = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

puts madLib