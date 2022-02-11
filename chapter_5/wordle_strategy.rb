# Objective: program returns a hash with each word and its effectiveness at solving the wordle.
# Steps:
    # 1) program will iterate through word list, each iteration will be the wordle word
    # 2) for each wordle, program will start at the top and execute the standard program, keeping track of how many tries it takes to guess the wordle.
    # 3) program will save the words and numbers as key=>value pairs, in theory the lowest score is the best word to start with

require '../useful_methods.rb'
require './wordle_methods.rb'


# Takes an array of words, returns a hash of those words and the number of guesses required to solve all the wordles
def efficacy_score(five_letter_words)
    efficiency_scores = {}
    five_letter_words.each do |word|
        efficiency_scores[word] = 0
    end

    efficiency_scores.keys.each do |wordle|
        efficiency_scores.keys.each do |firstGuess|
            # ------------------------->
            # CODE GOES HERE THAT ASSIGNS A SCORE TO EACH WORD BASED ON HOW MANY GUESSES IT TAKES TO SOLVE FOR ALL THE WORDS IN THE DICTIONARY.
            
            # MAYBE CONSIDER MAKING IT AN AVERAGE SOLVE NUMBER RATHER THAN A CUMULATIVE NUMBER 
            # -------------------------->
        end
    end


end

wordsAndScores  = {}
guesses         = {}
greenLetters    = [[],[],[],[],[]]
wordle = "HUMOR"

five_letter_words = File.read("../five_letter_words.txt").upcase.split.sort # puts all the words uppercase in an array

suggestions = wordsAndScores.sort_by(&:last)

# 1st Guess Clues
while greenLetters.join.length < 5
    suggestions = wordsAndScores.sort_by(&:last)
    word = suggestions.last.first
    guesses[word] = wordle_input(word,greenLetters)
    remove_previous_guesses(guesses,wordsAndScores)
    greenLetters = filter(guesses,wordsAndScores)
    wordsAndScores.values.sort.last
end

if greenLetters.join.length == 5
    puts "The word was '#{greenLetters.join}'"
else 
    puts "Whoops, guess you didn't get it this time!"
end