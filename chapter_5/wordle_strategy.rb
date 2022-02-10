# Gather Info:
    # Wordle is a game like Hangman, where the player gets 6 tries to guess a five letter word.
        # Each guess reveals a clue as to the word, by coloring each letter in the guess:
            # Gray: letter is not in word
            # Yellow: letter is in word, but wrong spot
            # Green: letter is in word and is in correct spot
    # Letters in order of most to least frequent:
    # E,A,R,I,O,T,N,S,L,C,U,D,P,M,H,G,B,F,Y,W,K,V,X,Z,J,Q

# Problem Statement:
    # Write a program that provides optimal suggestions for the game Wordle. Program will suggest words based on Wordle's responses, by searching the list of five letter words. Game play looks like:
        # Guess 1) Program suggests word with the most vowells and most frequently used consonants ("ADIEU") 
        # Guess 2) Program prompts for results from first ("ADIEU", "A":Gray, "D":Yellow, "I":Gray, "E":yellow, "U":Gray)
            # Program looks for words with "D" and "E", excluding words with "D" in the 0th, and "E" in the 3rd position, and words that do not include letters marked gray.
            # Program arranges them by commonness of the letters in the words
            # Player should pick the top word
        # Guess 3 - 6) Program repeats process until out of guesses or correct.

# Inputs (nouns):
    # 
# processes (verbs):
# Outputs (nouns):
# TDD
    # Input:
    # Expected result:
    # Actual result:
# Pseudocode:
# Constraints:
# Challenges:

require '../useful_methods.rb'

five_letter_words = File.read("../five_letter_words.txt").upcase.split.sort

# dictionary = File.read("../englishdictionary.txt").split.sort.uniq

# File.open("../five_letter_words.txt","w") do |f|
#     dictionary.each do |line| 
#         if line.length == 5 && (!line.include? "-") && (!line.include? "'") && (!line.include? "@") && (!line.include? ".") && (!line.include? "!") && (!line.include? "/") && line.index(/[0123456789]/) == nil
#             f.write line + "\n"
#         end
#     end
# end

def freq_score(word,hashOfWordsAndScores)
    split_word = word.upcase.split('')
    freq_score = 0
    split_word.each do |letter|
        case letter
        when letter = "A"
            freq_score += 8.4966
        when letter = "B"
            freq_score += 2.0720
        when letter = "C"
            freq_score += 4.5388
        when letter = "D"
            freq_score += 3.3844
        when letter = "E"
            freq_score += 11.1607
        when letter = "F"
            freq_score += 1.8121
        when letter = "G"
            freq_score += 2.4705
        when letter = "H"
            freq_score += 3.0034
        when letter = "I"
            freq_score += 7.5448
        when letter = "J"
            freq_score += 0.1965
        when letter = "K"
            freq_score += 1.1016
        when letter = "L"
            freq_score += 5.4893
        when letter = "M"
            freq_score += 3.0129
        when letter = "N"
            freq_score += 6.6544
        when letter = "O"
            freq_score += 7.1635
        when letter = "P"
            freq_score += 3.1671
        when letter = "Q"
            freq_score += 0.1962
        when letter = "R"
            freq_score += 7.5809
        when letter = "S"
            freq_score += 5.7351
        when letter = "T"
            freq_score += 6.9509
        when letter = "U"
            freq_score += 3.6308
        when letter = "V"
            freq_score += 1.0074
        when letter = "W"
            freq_score += 1.2899
        when letter = "X"
            freq_score += 0.2902
        when letter = "Y"
            freq_score += 1.7779
        when letter = "Z"
            freq_score += 0.2722
        end
    end
    hashOfWordsAndScores[word] = freq_score
end

def freq_sort(hashOfWordsAndScores) # Do something with this, doesn't necessarily work
    # hashOfWordsAndScores.values.sort.each do |score|
    #     puts "#{hashOfWordsAndScores.key(score)} => #{score}"
    # end
    hashOfWordsAndScores.key(hashOfWordsAndScores.values.sort.last)
end

def priority_no_repeated_letters(hashOfWordsAndScores)
    hashPriorityNoRepeatedLeters = hashOfWordsAndScores.clone
    hashOfWordsAndScores.keys.each do |word|
        array = word.split('')
        if array.uniq != array
            hashPriorityNoRepeatedLeters[word] = 0
        end
    end
    hashPriorityNoRepeatedLeters
end

def wordle_input(word)
    letters = []
    word.split('').each do |letter|
        letters.push [letter,chooseOne(letter,["gray","yellow","green"])]
    end
    letters
end

def remove_previous_guesses(guesses,hashOfWordsAndScores)
    hashOfWordsAndScores.keys.each do |word|
        guesses.keys.each do |guess|
            if word == guess
                hashOfWordsAndScores[word] = 0
            end
        end
    end
end

def filter_by_letter(guesses,hashOfWordsAndScores)
    excludedLetters = []
    includedLetters = []
    guesses.keys.each do |guess|
        guesses[guess].each do |letterSpecification|
            if letterSpecification.last == "gray" && (includedLetters.include? letterSpecification.first) != true
                excludedLetters.push letterSpecification.first
            end
        end
    end
    excludedLetters.uniq!
    puts "Excluded letters :'#{excludedLetters}'"
    hashOfWordsAndScores.keys.each do |word|
        excludedLetters.each do |excludedLetter|
            if word.include? excludedLetter
                hashOfWordsAndScores[word] = 0
            end
        end
    end
    guesses.keys.each do |guess|
        guesses[guess].each do |letterSpecification|
            if letterSpecification.last == "green" || letterSpecification.last == "yellow"
                includedLetters.push letterSpecification.first
            end
        end
    end
    includedLetters.uniq!
    puts "Included letters : '#{includedLetters}'"
    hashOfWordsAndScores.keys.each do |word|
        includedLetters.each do |includedLetter|
            if !word.include? includedLetter
                hashOfWordsAndScores[word] = 0
            end
        end
    end
    hashOfWordsAndScores.keys.each do |word|
        guesses.keys.each do |guess|
            guesses[guess].each.with_index do |letterSpec,index|
                if letterSpec.last == "green" && word.split('')[index] != letterSpec.first
                    hashOfWordsAndScores[word] = 0
                elsif letterSpec.last == "yellow" && word.split('')[index] == letterSpec.first
                    hashOfWordsAndScores[word] = 0
                end
            end
        end
    end
end

hashOfWordsAndScores = {}
guesses = {}

five_letter_words.each { |word| freq_score(word,hashOfWordsAndScores)}  # calculates scores based on letters, returns hash

# 1st Guess Recommendation
hashPriorityNoRepeatedLetters = priority_no_repeated_letters(hashOfWordsAndScores)
puts freq_sort(hashPriorityNoRepeatedLetters)                          

# 2nd Guess Recommendation
word = getString("Please enter your first guess").upcase
guesses[word] = wordle_input(word) 
remove_previous_guesses(guesses,hashPriorityNoRepeatedLetters)
filter_by_letter(guesses,hashPriorityNoRepeatedLetters)
puts freq_sort(hashPriorityNoRepeatedLetters)

# 3-6th Guess Recommendations
word = getString("Please enter your second guess").upcase
guesses[word] = wordle_input(word)
remove_previous_guesses(guesses,hashOfWordsAndScores)
filter_by_letter(guesses,hashOfWordsAndScores)
puts freq_sort(hashOfWordsAndScores)

# Fourth Guess
word = getString("Please enter your third guess").upcase
guesses[word] = wordle_input(word)
remove_previous_guesses(guesses,hashOfWordsAndScores)
filter_by_letter(guesses,hashOfWordsAndScores)
puts freq_sort(hashOfWordsAndScores)

# Fifth Guess
word = getString("Please enter your fourth guess").upcase
guesses[word] = wordle_input(word)
remove_previous_guesses(guesses,hashOfWordsAndScores)
filter_by_letter(guesses,hashOfWordsAndScores)
puts freq_sort(hashOfWordsAndScores)

# Sixth Guess
word = getString("Please enter your fifth guess").upcase
guesses[word] = wordle_input(word)
remove_previous_guesses(guesses,hashOfWordsAndScores)
filter_by_letter(guesses,hashOfWordsAndScores)
puts freq_sort(hashOfWordsAndScores)