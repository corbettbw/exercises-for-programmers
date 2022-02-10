require '../useful_methods.rb'
require './wordle_methods.rb'

wordsAndScores  = {}
guesses         = {}
greenLetters    = [[],[],[],[],[]]


five_letter_words = File.read("../five_letter_words.txt").upcase.split.sort
five_letter_words.each { |word| wordsAndScores[word] = freq_score(word) }
no_repeat_letters = no_repeated_letters(wordsAndScores)
suggestions = no_repeat_letters.sort_by(&:last) 


# 1st Recommendation
-3.upto(-1) {|n| puts suggestions[n].first }

# 1st Guess Clues
while greenLetters.join.length < 5 && guesses.keys.length < 6
    if guesses.keys.length > 0
        suggestions = wordsAndScores.sort_by(&:last)
        -3.upto(-1) {|n| puts suggestions[n].first }
    end

    word = getString("Please enter your guess").upcase
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




