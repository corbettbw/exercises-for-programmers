# solution takes a message and a number of characters
# compares message length to k
# if message > k
#   remove last word
#   compare again
# end
# return cropped string

message = "The quick brown fox jumps over the lazy dog"
k = 1

def solution(message,k)
    while message.length > k
        array = message.split(' ')
        array.pop
        message = array.join(' ')
    end
    message
end

puts solution(message,k)