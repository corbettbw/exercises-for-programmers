# Gather Info
# Problem Statement:
    # Program will draw a triangle, starting with 1 asterisk (*) and increase by 1 each layer, for n layers.

# Inputs (nouns):       number of layers (n)      
# processes (verbs):    increase by 1
# Outputs (nouns):      draw a triangle
# TDD
    # Input:                2, 3, 9
    # Expected result:

    #     *
    #    * *
    #   * * *
    #  * * * *
    # * * * * *

# Actual result
# Pseudocode:
    # n = gets.chomp
    # 1.upto(n) do |layer|
        # each_line = " " * (n - layer) + "* " * layer
        # puts each_line
    # end
# Constraints:
# Challenges

n = gets.chomp.to_i

1.upto(n) do |layer|
    each_line = " " * (n - layer) + "* " * layer
    puts each_line
end