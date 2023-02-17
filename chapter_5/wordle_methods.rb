# In an attempt to clean up my code, I'll be describing my strategies and working solutions here.

# Wordle Methods:
    # contains all the useful methods for the Wordle strategy programs

# wordle_letter_freq_strategy.rb
    # Basic Strategy:
        # figures out the most frequently used letters
        # assigns a score to each word based on how popular the letters are in the word
        # initial N suggestions only suggest words with no repeating letters
        # subsequent suggestions based on clues and letter frequency
    
    # Further Research:
        # how effective is the non-repeating letters aspect?
        # Automate the guessing process with clues  

# wordle_letter_index_freq_strategy.rb
    # Basic Strategy:
        # Figure out most frequently used letters in each index
        # sort words by that
    # Further Research:
        # Is this more effective at recommending than the others?

# wordle_solve_entire_dictionary.rb
    # Basic Strategy:
        # work through each word as the mystery word
        # assign score to starting word based on average no. of guesses
    # Considerations:
        # This is going to be a processing-intensive project
        # Save the results in a new file for later access
        



require '../useful_methods.rb'

# Takes a word, returns a value based on the frequency of the letters' use overall
def freq_score(word)
    split_word = word.upcase.split('')
    freq_score = 0.0
    score_hash = {
        "A" => 8.4966,
        "B" => 2.0720,
        "C" => 4.5388,
        "D" => 3.3844,
        "E" => 11.160,
        "F" => 1.8121,
        "G" => 2.4705,
        "H" => 3.0034,
        "I" => 7.5448,
        "J" => 0.1965,
        "K" => 1.1016,
        "L" => 5.4893,
        "M" => 3.0129,
        "N" => 6.6544,
        "O" => 7.1635,
        "P" => 3.1671,
        "Q" => 0.1962,
        "R" => 7.5809,
        "S" => 5.7351,
        "T" => 6.9509,
        "U" => 3.6308,
        "V" => 1.0074,
        "W" => 1.2899,
        "X" => 0.2902,
        "Y" => 1.7779,
        "Z" => 0.2722
    }
    split_word.each do |letter|
        freq_score += score_hash[letter]
    end
    freq_score
end

# takes a string of yellow and green letters, determines a freq score, iterates through five_letter_words, 
def adjust_freq_score(knownLetters,wordsAndScores)
    knownLetterScore = freq_score(knownLetters.join)
    wordsAndScores.keys.each do |word|
        if wordsAndScores[word] != 0
            wordsAndScores[word] = freq_score(word) - knownLetterScore
        end
    end
end

# Takes a word, returns a nested array with letter-color pairs: "ABC" => [["A","green"],["B","yellow"],["C","gray"]]
def wordle_input(word,greenLetters)
    letters = []
    word.split('').each.with_index do |letter,index|
        if greenLetters[index].empty?
            letters.push [letter,chooseOne(letter,["gray","yellow","green"])]
        else
            letters.push [letter, "green"]
        end
    end
    letters
end

# Takes two hashes; guesses and wordsAndScores, assigns a score of 0 for any word already guessed
def remove_previous_guesses(guesses,wordsAndScores)
    wordsAndScores.keys.each do |word|
        guesses.keys.each do |guess|
            if word == guess
                wordsAndScores[word] = 0
            end
        end
    end
end

# Takes two hashes; guesses and wordsAndScores, assigns a score of 0 for any word with letters in the wrong place
def filter(guesses,wordsAndScores)
    grayLetters = [[],[],[],[],[]]
    yellowLetters = [[],[],[],[],[]]
    greenLetters = [[],[],[],[],[]]
    guesses.keys.each do |word|
        guesses[word].each.with_index do |letterClue,index|
            if letterClue.last == "gray" 
                grayLetters[index].push letterClue.first
                grayLetters[index].uniq!
            elsif letterClue.last == "yellow"
                yellowLetters[index].push letterClue.first
                yellowLetters[index].uniq!
            elsif letterClue.last == "green" 
                greenLetters[index].push letterClue.first unless greenLetters[index].empty? == false
                greenLetters[index].uniq!
            end
        end
    end

    puts "Gray Letters : #{grayLetters}'"
    puts "Yellow Letters : #{yellowLetters}'"
    puts "Green Letters : #{greenLetters}'"

    # takes each word in the dictionary and assigns it a 0 if it has a gray, yellow, or green letter in the wrong place
    wordsAndScores.keys.each do |word|
        word.split('').each.with_index do |letter,index|
            grayLetters[index].each do |grayLetter|
                if letter == grayLetter
                    wordsAndScores[word] = 0
                end
            end
            yellowLetters[index].each do |yellowLetter|
                if letter == yellowLetter || !(word.include? yellowLetter)
                    wordsAndScores[word] = 0
                end
            end
            greenLetters[index].each do |greenLetter|
                if letter != greenLetter
                    wordsAndScores[word] = 0
                end
            end
        end
        grayLetters.join.split('').each do |grayLetter|
            if (word.include? grayLetter) && !(greenLetters.join.include? grayLetter) && !(yellowLetters.join.include? grayLetter)
                wordsAndScores[word] = 0
            end
        end
    end
    greenLetters
end

def no_repeated_letters(wordsAndScores)
    no_repeat_letters = wordsAndScores.clone
    no_repeat_letters.keys.each do |word|
        array = word.split('')
        if array.uniq != array
            no_repeat_letters[word] = 0
        end
    end
    no_repeat_letters
end