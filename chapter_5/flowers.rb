def solution(arr)                                               # ["daisy","rose","hyacinth","poppy"]
    newArray = []                                               
    newString = ""
    arr.each {|word| newArray.push word.split('') }             
    # newArray = [["d", "a", "i", "s", "y"], ["r", "o", "s", "e"], ["h", "y", "a", "c", "i", "n", "t", "h"], ["p", "o", "p", "p", "y"]]
    numberOfWords = newArray.length                             # 4
    newArray[0].each.with_index do |letter,index|               # ["d", "a", "i", "s", "y"] "d",0
        newArray.each do |word|
            if word[index] == nil
                newString += ""
            else
                newString += word[index]
            end
        end
    end
    puts newString
end

array = ["daisy","rose","hyacinth","poppy"]

solution(array)

# "DRHPaoyoisapaecpyiynth";
# "DRHPaoyoisapsecpy
