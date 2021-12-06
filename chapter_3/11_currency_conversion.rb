# Gather Info:
    # At some point, you might have to deal with currency exchange rates, and you’ll need to ensure your calculations are as precise as possible.

# Problem Statement:
    # Write a program that converts currency. Specifically, convert euros to U.S. dollars. Prompt for the amount of money in euros you have, and prompt for the current exchange rate of the euro. Print out the new amount in U.S. dollars. The formula for currency conversion is:
        # amount_to = (amount_from * rate_from) / rate_to
        # where:
            # amount_to     = amount in US dollars
            # amount_from   = amount in Euros
            # rate_from     = current exchange rate in euros
            # rate_to       = current exchange rate in US dollars

# Inputs (nouns):
    # amount of money in euros
    # current exchange rate of euro
    # 
# processes (verbs):
    # convert euros to dollars
    # prompt for amount of euros
    # prompt for exchange rate of euros
    # print amount in US dollars
# Outputs (nouns):
    # amount in USD

# TDD
    # Input:
        # How many euros are you exchanging? 81
        # What is the exchange rate? 137.51 

    # Expected result:
        # 81 euros at an exchange rate of 137.51 is 111.38 U.S. dollars.

    # Actual result
# Pseudocode:
    # puts "How many euros are you exchanging?"
    # amount_from = gets.chomp

    # puts "What is the exchange rate?"
    # rate_from = gets.chomp

    # amount_to = (amount_from * rate_from)

    # puts "#{amount_from} Euros at an exchange rate of #{rate_from} is #{amount_to} U.S. dollars."

# Constraints:
    # Ensure that fractions of a cent are rounded up to the next penny.
    # Use a single output statement.

# Challenges
    # Build a dictionary of conversion rates and prompt for the countries instead of the rates.
    # Wire up your application to an external API[3] that provides the current exchange rates.


def getFloat(prompt)
    begin
        puts prompt
        Float(gets.chomp)
    rescue ArgumentError => error
        puts "Please use numerals"
        retry
    end
end

amount_from = getFloat("How many euros are you exchanging?")
rate_from = getFloat("What is the exchange rate?")

amount_to = (amount_from * rate_from)

puts "%#.2f #{amount_from == 1 ? "Euro" : "Euros"} at an exchange rate of %#.2f is equal to %#.2f U.S. #{amount_to == 1 ? "dollar" : "dollars"}." % [amount_from,rate_from,amount_to]


