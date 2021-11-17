# Gather Info:
    # Division isn’t always exact, and sometimes you’ll write programs that will
    # need to deal with the leftovers as a whole number instead of a decimal.
    # 
# Problem Statement:
    # Write a program to evenly divide pizzas. Prompt for the number of people,
    # # the number of pizzas, and the number of slices per pizza. Ensure that the
    # # number of pieces comes out even. Display the number of pieces of pizza
    # # each person should get. If there are leftovers, show the number of leftover
    # pieces.
# Inputs (nouns):
    # number of people, number of pizzas, number of slices per pizza
# processes (verbs):
    # display
# Outputs (nouns):   
    # number of pieces of pizza per person, number of leftover pieces   
# TDD
    # Input: 
        # How many people? 8 
        # How many pizzas do you have? 2
        # How many slices does each pizza have? 8

    # Expected result: 
        # 8 people with 2 pizzas
        # Each person gets 2 pieces of pizza.
        # There are 0 leftover pieces.

    # Actual result:

# Pseudocode:
    # puts "how may people?"
    # people = gets.chomp

    # puts "how many pizzas do you have?"
    # pizzas = gets.chomp

    # puts "how many slices does each pizza have?"
    # slices_per_pizza = gets.chomp

    # slices_per_person = pizzas * slices_per_pizza / people
    # leftovers = pizzas * slices_per_pizza % people

    # puts "#{people} people with #{pizzas} pizzas"
    # puts "each person gets #{slices_per_person} slices of pizza"
    # puts "there are #{leftover} leftover pieces"

# Constraints:
# Challenges:
    # Revise the program to ensure that inputs are entered as numeric values.
    # Don’t allow the user to proceed if the value entered is not numeric.
    # Alter the output so it handles pluralization properly, for example:
        # Each person gets 2 pieces of pizza.
        # or
        # Each person gets 1 piece of pizza.
    # Handle the output for leftover pieces appropriately as well.
    # Create a variant of the program that prompts for the number of people
    # and the number of pieces each person wants, and calculate how many
    # full pizzas you need to purchase.

require 'active_support/inflector'

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

number_of_people = getInteger("how may people?")
number_of_pizzas = getInteger("how many pizzas do you have?")
slices_per_pizza = getInteger("how many slices does each pizza have?")

slices_per_person = number_of_pizzas * slices_per_pizza / number_of_people
leftovers = number_of_pizzas * slices_per_pizza % number_of_people

puts "#{number_of_people} #{"person".pluralize(number_of_people)} with #{number_of_pizzas} #{"pizza".pluralize(number_of_pizzas)} "
puts "Each person gets #{slices_per_person} #{"slice".pluralize(slices_per_person)} of pizza"
puts "There #{leftovers == 1? 'is' : 'are'} #{leftovers} leftover #{"piece".pluralize(leftovers)}"