# given an array of integers, each element representing the pollution from 1 factory, write a program that finds the minimum number of filters to get pollution to at least half of the original. Each subsequent filter reduces the pollution of the individual factory by half.

# order the array, starting on the end and apply 1 filter. reorder the array and apply to the new largest polluter

a =  [1,5,8,19]  # with 0 filters, sum = 33
#    [1, 5, 8, 9.5] # with 1 filter,  sum = 23.5
#    [1, 4.75, 5, 8]# with 2 filters, sum = 18.75
#    [1, 4, 4.75, 5]# with 3 filters, sum = 14.75

def solution(a)
    number_of_filters = 0
    pollution_actual = a.inject(:+)
    pollution_goal = pollution_actual / 2.0
    
    while pollution_actual > pollution_goal
        biggest_polluter = a.sort!.pop
        a.push biggest_polluter / 2.0
        number_of_filters += 1
        pollution_actual = a.inject(:+)
    end
    number_of_filters
end

puts solution(a)
