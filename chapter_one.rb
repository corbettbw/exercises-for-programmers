# Create a simple tip calculator. The program should prompt for a bill
# amount and a tip rate. The program must compute the tip and then
# display both the tip and the total amount of the bill.

# Nouns:
    # Bill amount
    # tip rate
    # tip
    # total amount

# Verbs:
    # prompt
    # compute
    # display

# Inputs:       Bill amount,        tip rate
# Processes:    calculate tip
# Outputs:      tip amount,         total amount

# Inputs:
    # Bill Amount:  10,     11.25,  "abcd", -1
    # Tip Rate:     15,     15,     15,     15
# Expected Result:
    # Tip:          1.50,   1.69,   "Please enter a valid amount", ""
    # Total:        11.50,  12.94
# Actual Result: 

# TipCalculator
#     prompt what is the billAmount?
#     prompt what is the tipRate?

#     tip = billAmount * (tipRate / 100)
#     round tip to nearest cent
    
#     total = billAmount + tip

#     puts "Tip: $" + tip
#     puts "Total: $" + total
# end

def promptPositiveNumber(inputString)
    variable = 0
    while variable <= 0.00
        puts "What is the #{inputString}?"
        variable = gets.chomp.to_f
        if variable <= 0
            puts "Please enter a positive number."
        end
    end
    return variable
end

billAmount = promptPositiveNumber("bill amount")
tipRate = promptPositiveNumber("tip rate")


tip = billAmount * (tipRate / 100.00)
total = billAmount + tip

puts "Tip: $#{'%.2f' % tip}"
puts "Total: $#{'%.2f' % total}"


