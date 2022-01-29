# 1.upto(100) do |n|
#     if n % 5 == 0 && n % 3 == 0
#         puts "FizzBuzz"
#     elsif n % 5 == 0
#         puts "Buzz"
#     elsif n % 3 == 0
#         puts "Fizz"
#     else 
#         puts n
#     end
# end


numbers = []
2.upto(100) { |n| numbers.push n}

numbers.each do |n|
    numbers.map do |multiple|
        if n != multiple && n % multiple == 0
            multiple = nil
        end
    end
    numbers
