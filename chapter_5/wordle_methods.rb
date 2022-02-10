require '../useful_methods.rb'

# Takes a word, returns a value based on the frequency of the letters' use overall
def freq_score(word)
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
    freq_score
end

# Takes a word, returns a nested array with letter-color pairs: "ABC" => [["A","green"],["B","yellow"],["C","gray"]]
def wordle_input(word,greenLetters)
    letters = []
    word.split('').each.with_index do |letter,index|
        if greenLetters[index].empty?
            letters.push [letter,chooseOne(letter,["gray","yellow","green"])]
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
                greenLetters[index].push letterClue.first
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