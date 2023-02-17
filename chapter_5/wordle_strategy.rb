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


def frequency_by_index(five_letter_words)
    letter_freq = {}
    five_letter_words.each do |word|
        word.split('').each.with_index do |letter,index|
            if letter_freq[letter].nil?
                letter_freq[letter] = [0,0,0,0,0]
                letter_freq[letter][index] += 1
            else 
                letter_freq[letter][index] += 1
            end
        end
    end
    letter_freq
end

LetterPositionFreq = Struct.new(:first,:second,:third,:fourth,:fifth)

def new_word_score(five_letter_words,letter_freq)
    wordsAndScores = {}
    five_letter_words.each do |word|
        wordsAndScores[word] = LetterPositionFreq.new(
            letter_freq[word[0]][0],
            letter_freq[word[1]][1],
            letter_freq[word[2]][2],
            letter_freq[word[3]][3],
            letter_freq[word[4]][4]
        )
    end
    wordsAndScores
end

wordsAndScores  = {}
guesses         = {}
greenLetters    = [[],[],[],[],[]]

five_letter_words = File.read("../five_letter_words.txt").upcase.split.sort # puts all the words uppercase in an array

letter_freq = frequency_by_index(five_letter_words)
wordsAndScores = new_word_score(five_letter_words,letter_freq)

suggestions = wordsAndScores.sort_by {|stats| [stats[1].first,stats[1].second,stats[1].third,stats[1].fourth,stats[1].fifth] }

suggestions.each {|word| puts "#{word.first} => #{word.last[0]},#{word.last[1]},#{word.last[2]},#{word.last[3]},#{word.last[4]}" }

# # 1st Guess Clues
# while greenLetters.join.length < 5
#     suggestions = wordsAndScores.sort_by(&:last)
#     word = suggestions.last.first
#     guesses[word] = wordle_input(word,greenLetters)
#     remove_previous_guesses(guesses,wordsAndScores)
#     greenLetters = filter(guesses,wordsAndScores)
#     wordsAndScores.values.sort.last
# end

# if greenLetters.join.length == 5
#     puts "The word was '#{greenLetters.join}'"
# else 
#     puts "Whoops, guess you didn't get it this time!"
# end
# SAAES