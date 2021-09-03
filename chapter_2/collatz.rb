# Collatz Conjecture: Take any positive integer n. If the previous integer is even, the next term is 1/2 of the previous. If the integer is odd, the next term is 3n + 1. Will the sequence always reach 1?

hash = {}
number = 100
def sequence_collatz(hash,number)
    2.upto(number) do |n|
        x = n
        array = [n]
        while n != 1
            if n % 2 == 0
                n /= 2
                array.push n
            else
                n = n * 3 + 1
                array.push n
            end
        end
        hash[x] = array
    end
end




# hash.values.sort_by(&:length).each do |array|
#     puts "#{hash.key(array)} => #{array.length - 1} convolution => #{(array.length - 1) / Math.log(hash.key(array), 2)}"
#     puts ""
# end