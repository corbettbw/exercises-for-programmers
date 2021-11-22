

sum = 0
3.upto(999) do |n|
    if n % 3 == 0 || n % 5 == 0
        puts n
        sum += n
    end
end
puts sum