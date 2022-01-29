# Write a function that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
# Given A = [1, 2, 3], the function should return 4.
# Given A = [−1, −3], the function should return 1.

# Write an efficient algorithm for the following assumptions:

# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−1,000,000..1,000,000].

require 'benchmark'
    
def solution_short(a)
    i = 1
    a.sort!.each { |n| i == n ? i += 1 : i }
    i
end

def solution_delete(a)
    i = 1
    a.sort!.each do |n| 
        if n <= 0 || n == a[a.find_index(n) + 1]
            a.delete(n)
        elsif i == n 
            i += 1
        end
    end
    i
end

def solution_pop(a)
    i = 1
    a.sort!.reverse!

    while !a.empty? && a.last <= 0
        a.pop
    end

    a.reverse!.each { |n| i == n ? i += 1 : i }
    i
end

numbers = []
rand(1..100000).times do 
    numbers.push rand(-1000000..1000000)
end

a = b = c = numbers

time = Benchmark.realtime { puts solution_delete(a) }
puts "Time delete: #{time}"

time = Benchmark.realtime { puts solution_pop(b) }
puts "Time pop: #{time}"

time = Benchmark.realtime { puts solution_short(c) }
puts "Time short: #{time}"