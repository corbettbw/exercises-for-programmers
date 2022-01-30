# Gather Info:
    # Using functions to abstract the logic away from the rest of your code makes it easier to read and easier to maintain.

# Problem Statement:
    # Create a program that compares two strings and determines if the two strings are anagrams. The program should prompt for both input strings and display the output as shown in the example that follows.

# Inputs (nouns):
    # strings
    # anagrams

# processes (verbs):
    # compares
    # prompts
    # display

# Outputs (nouns):
    # string 1 and string 2 are/are not anagrams

# TDD
    # Input:
        # Enter two strings and I'll tell you if they
        # are anagrams:
        # Enter the first string: note
        # Enter the second string: tone

    # Expected result:
        # "note" and "tone" are anagrams.

    # Actual result:

# Pseudocode:
    # puts prompt
    # get string 1
    # get string 2
    # def isAnagram(string1,string2)
    #   if string1.reverse == string2
    #       puts "string 1 and string 2 are anagrams"
    #   else
    #       puts "string 1 and string 2 are not anagrams"
    #   end
    # end
    # if string 1 reversed == string 2
    # puts string 1 and string 2 are anagrams
    # else puts string 1 and string 2 are not anagrams

# Constraints:
    # Implement the program using a function called isAnagram, which takes in two words as its arguments and returns true or false. Invoke this function from your main program.
    
    # Check that both words are the same length.

# Challenges:
    # Complete this program without using built-in language features. Use selection or repetition logic instead and develop your own algorithm.

require '../useful_methods.rb'

class String
    def isAnagram?(string2)
        if self.length != string2.length
            return false
        else
            string2.split('').permutation.each do |anagram| 
                if anagram.join('') == self
                    return true
                end
            end
        end
    end
end

string1 = getString("Enter the first string:").downcase
string2 = getString("Enter the second string:").downcase

if string1.isAnagram?(string2) == true
    puts "#{string1} and #{string2} are anagrams"
else
    puts "#{string1} and #{string2} are NOT anagrams"
end