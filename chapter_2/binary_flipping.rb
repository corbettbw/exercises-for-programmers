# Gather Info
# Problem Statement: 
    # For any sequence of coins, they can either be heads up or tails up. The ideal pattern has all of the heads first, then all the tails last. This can be achieved by flipping coins from either H to T, or T to H. Write a program that calculates the minimum number of flips to achieve this pattern.

# Inputs (nouns): sequence of coins  
# processes (verbs): flip coins
# Outputs (nouns): ideal pattern
# TDD
    # Input:
    # Expected result:
    # Actual result
# Pseudocode:
# Constraints:
# Challenges


# Write a program to translate binary into decimal
# translate_binary(binary_string)
# reverse it because now place value corresponds to the element of the array for each digit.

def translate_binary(binary_string)
    decimal = 0
    index = 0
    binary_number = binary_string.chars.map(&:to_i).reverse
    binary_number.each do |digit|
        decimal += (2**index) * digit
        index += 1
    end
    return decimal
end


# binary_number = []
# 5.times do
#     binary_number.push(rand(0..1))
#     binary_string = binary_number.join
# end

# binary_number.length 

# define a method that takes a string of Hs and Ts
# go from left to right and add 1 to the heads counter for each tails that shows up
# go from right to left and add 1 to the tails counter for each heads that shows up
# add each by array index
# find the lowest and subtract 1
# that's your answer!

def minimum_flips(coins)
    coin_array = coins.split('')
    
    heads = 0
    tails = 0
    heads_counter = []
    tails_counter = []
    flip_count = []

    coin_array.each do |coin|
        if coin == "T"
            heads += 1
        end
        heads_counter.push heads
    end

    coin_array.reverse.each do |coin|
        if coin == "H"
            tails += 1
        end
        tails_counter.push tails
    end

    tails_counter.reverse!

    0.upto(heads_counter.length - 1) do |index|
        flip_count.push heads_counter[index] + tails_counter[index] - 1
    end
    return flip_count.sort.first
end

def single_read(coins)
    coin_array = coins.split('')
    tails_count = 0
    heads_count = 0
    flip_count = coin_array.length

    coin_array.each do |coin|
        if coin == "H"
            heads_count += 1
        else 
            tails_count += 1
        end

        if heads_count + tails_count <= flip_count
            flip_count = heads_count + tails_count
        end
    end

    return flip_count 
end



coins = ""

# 100000.times do
#      coins += ["H","T"].shuffle.first
# end

# puts coins.length

puts minimum_flips('THTHHT')