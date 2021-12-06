class String
    def has_numeral?
        self.split('').any? { |character| character.to_i.to_s == character }
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