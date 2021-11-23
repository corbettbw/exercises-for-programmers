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

class String
    def has_numeral?
        self.split('').any? { |character| character.to_i.to_s == character}
    end
end

def getString(prompt)
    begin
        puts prompt
        string = String(gets.chomp)
        raise if string.has_numeral? || string.empty?
    rescue
        puts "Please make an entry, and make sure it's actual letters, Elon!"
        retry
    end
    string
end

puts "This is a MadLib. Please enter a noun, verb, adverb, and adjective when prompted."
noun = getString("Please enter a noun")
verb = getString("Please enter a verb")
adverb = getString("Please enter an adverb")
adjective = getString("Please enter an adjective")

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"