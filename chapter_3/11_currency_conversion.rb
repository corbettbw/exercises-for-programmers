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

require '../useful_methods.rb'
require 'json'
require 'net/http'

url = 'https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/usd.json'
uri = URI(url)
response = Net::HTTP.get(uri)
rates = JSON.parse(response)['usd']

def convertCurrency(amount_from,rates,currency1,currency2)
    amount_to = (amount_from * rates[currency2]) / rates[currency1]
end

amount_from = getFloat("Please enter the amount of currency to convert with no symbols ($10 = 10)")
currency1 = chooseOne("Please enter the letter abbreviation of the country you wish to convert FROM",rates.keys)
currency2 = chooseOne("Please enter the letter abbreviation of the country you wish to convert TO",rates.keys)
amount_to = convertCurrency(amount_from,rates,currency1,currency2)

puts "%#.2f #{currency1}(s) is equal to %#.2f #{currency2}(s)" % [amount_from,amount_to]

