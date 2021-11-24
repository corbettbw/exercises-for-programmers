# Gather Info:
    # Working with multiple inputs and currency can introduce some tricky
    # precision issues.
# Problem Statement:
    # Create a simple self-checkout system. Prompt for the prices and quantities
    # of three items. Calculate the subtotal of the items. Then calculate the tax
    # using a tax rate of 5.5%. Print out the line items with the quantity and total,
    # and then print out the subtotal, tax amount, and total.
# Inputs (nouns):      
    # prices
    # quantities of 3 items
    # subtotal

# processes (verbs):
    # prompt
    # calculate subtotal
    # calculate tax
    # print

# Outputs (nouns):
    # line items with quantity and total
    # subtotal
    # tax amount
    # total 
# TDD
    # Input:
        # Enter the price of item 1: 25
        # Enter the quantity of item 1: 2
        # Enter the price of item 2: 10
        # Enter the quantity of item 2: 1
        # Enter the price of item 3: 4
        # Enter the quantity of item 3: 1
    # Expected result:
        # Subtotal: $64.00
        # Tax: $3.52
        # Total: $67.52
    # Actual result

# Pseudocode:
    # item_1_price = getInteger(prompt)
    # quantity_1 = getInteger(prompt)

    # item_2_price = getInteger(prompt)
    # quantity_2 = getInteger(prompt)

    # item_3_price = getInteger(prompt)
    # quantity_3 = getInteger(prompt)

    # tax_rate = 0.055
    
    # subtotal = item_1_price * quantity_1 + item_2_price * quantity_2 + item_3_price * quantity_3
    # tax = subtotal * tax_rate
    # total = subtotal + tax

    # puts "Subtotal: #{subtotal}"
    # puts "Tax: #{tax}"
    # puts "Total: #{total}"

# Constraints:
    # Keep the input, processing, and output parts of your program separate.
    # Collect the input, then do the math operations and string building, and then print out the output.
    # Be sure you explicitly convert input to numerical data before doing any calculations.
# Challenges
    # Revise the program to ensure that prices and quantities are entered as numeric values. Don’t allow the user to        proceed if the value entered is not numeric.
    # Alter the program so that an indeterminate number of items can be entered. The tax and total are computed when        there are no more items to be entered.

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

"Enter the quantity of item 1:"

item_1_price = getInteger("Enter the price of item 1:")
quantity_1 = getInteger("Enter the quantity of item 1:")

item_2_price = getInteger("Enter the price of item 2:")
quantity_2 = getInteger("Enter the quantity of item 2:")

item_3_price = getInteger("Enter the price of item 3:")
quantity_3 = getInteger("Enter the quantity of item 3:")

tax_rate = 0.055

subtotal = item_1_price * quantity_1 + item_2_price * quantity_2 + item_3_price * quantity_3
tax = subtotal * tax_rate
total = subtotal + tax

puts "Subtotal: $#{subtotal.to_f.round(2)}"
puts "Tax: $#{tax}"
puts "Total: $#{total}"