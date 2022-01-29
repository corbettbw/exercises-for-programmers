# a group of friends want to take the minimum number of cars to a place. They will carpool.
# there are 2 arrays, p and s where: 
#   p is the number of people in each car [1,4,1]
#   s is the number of seats in each car  [1,5,1]
# 
# given the input above, the expected result is 2, since there's one seat in the middle car

# seats_available = s.sum - p.sum
# if seats_available == 0
#   min_cars = s.length
# elsif seats_availabe != 0
#   


# def solution(passengers, seats)
#     per_car_seats_available = []
#     total_seats_available = seats.sum - passengers.sum

#     if total_seats_available == 0
#         minimum_cars = seats.length
#     end

#     seats.each_with_index do |seat, index|
#         seats_available.push seat - passengers[index]
#     end

#     seats_available.sort!
#     passengers.sort!.reverse!

#     return minimum_cars
# end

seats = [1,5,1]
passengers = [1,4,1]

# order the seat array to have the largest available at the end
# create another array that is seats available
# 


def solution(passengers,seats)
    total_people = passengers.sum
    cars_left_over = seats.sort
    capacity = 0

    while total_people > capacity
        capacity += cars_left_over.pop
    end
    return seats.length - cars_left_over.length
end

puts solution(passengers,seats)

