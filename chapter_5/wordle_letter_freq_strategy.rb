require '../useful_methods.rb'
require './wordle_methods.rb'

def get_wordles(five_letter_words,numberOfWords)
    wordles = []
    numberOfWords.times do |number|
        wordles.push five_letter_words.shuffle.first
    end
    wordles
end

def reveal_clues(wordle,guess)
    array = wordle.split('')
    brray = guess.split('')

    brray.each do |letter|
        
    end
end

wordsAndScores  = {}
guesses         = {}
greenLetters    = [[],[],[],[],[]]

five_letter_words = File.read("../five_letter_words.txt").upcase.split.sort
five_letter_words.each { |word| wordsAndScores[word] = freq_score(word) }

no_repeat_letters = no_repeated_letters(wordsAndScores)
suggestions = no_repeat_letters.sort_by(&:last) 

while greenLetters.join.length < 5 #&& guesses.keys.length < 6
    if guesses.keys.length > 0
        suggestions = wordsAndScores.sort_by(&:last)
        -10.upto(-1) {|n| puts "#{suggestions[n].first} => #{suggestions[n].last}" }
    else
        filter(guesses,wordsAndScores)
        no_repeat_letters = no_repeated_letters(wordsAndScores)
        suggestions = no_repeat_letters.sort_by(&:last) 
        -10.upto(-1) {|n| puts "#{suggestions[n].first} => #{suggestions[n].last}" }
    end

    word = getString("Please enter your guess").upcase
    
    # Returns a nested array of letters and colors:[["a","gray"],["b","yellow"],["c","green"]]
    guesses[word] = wordle_input(word,greenLetters) 

    remove_previous_guesses(guesses,wordsAndScores)
    greenLetters = filter(guesses,wordsAndScores)
    adjust_freq_score(greenLetters,wordsAndScores)
    wordsAndScores.values.sort.last
end

if greenLetters.join.length == 5
    puts "The word was '#{greenLetters.join}'"
else 
    puts "Whoops, guess you didn't get it this time!"
end



