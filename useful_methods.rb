class String
    def has_numeral?
        self.split('').any? { |character| character.to_i.to_s == character }
    end

    def capitalize_words
        self.split.map { |word| word.capitalize }.join(" ")
    end
end

def getFloat(prompt)
    begin
        puts prompt
        Float(gets.chomp)
    rescue ArgumentError => error
        puts "Please use numerals"
        retry
    end
end

def getInteger(prompt)
    begin
        puts prompt
        integer = Integer(gets.chomp)
    rescue ArgumentError => error
        puts "Please use numerals"
        retry
    end
    return integer    
end

def getString(prompt)
    begin
        puts prompt
        string = String(gets.chomp.capitalize)
        raise if string.has_numeral? || string.empty?
    rescue
        puts "Please make an entry, and make sure it's actual letters, Elon!"
        retry
    end
    return string
end


def chooseOne(prompt,optionsArray)
    begin
        puts prompt
        choice = gets.chomp
        is_numeral = choice.to_i.to_s == choice ? true : false

        raise if (optionsArray.include? choice) == false && ( (optionsArray.include? choice.to_i) == false || is_numeral == false )
    rescue
        puts "\nPlease enter* one of the options:"
        optionsArray.each { |option| puts option }
        puts "\n**** Entries are case sensitive; make sure you enter your option exactly as indicated ***"
        retry
    end
    return is_numeral == true ? choice.to_i : choice
end

class DiagnosticTree < Array
    def initialize(question,yes_answer,no_answer)
        self.push question
        self.push yes_answer
        self.push no_answer
    end
    def question
        self[0]
    end
    def yes_answer
        self[1]
    end
    def no_answer
        self[2]
    end
end

def diagnose(tree)
    if tree.class != DiagnosticTree
        puts tree
    else 
        if chooseOne(tree.question,["y","n"]) == "y"
            diagnose(tree.yes_answer)
        else
            diagnose(tree.no_answer)
        end
    end
end