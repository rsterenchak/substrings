# substrings.rb
# This method will take in a word as the first argument and an array of valid substrings as the second argument. I should return a hash, listing each substring(case insensitive) that was found in the original string and how many times it was found in the array. 
# Also, make sure the method can handle the searching of multiple words.

word = "below"
word2 = "partner"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
count = 0
i = 0

# Iterate through the array to count the number of times the string "below" is contained in the array

while i < dictionary.length

    if dictionary.include?(word)

        dictionary.each { |words| 

            if words == word 

                count += 1
            end

        }

    end

    puts "#{word}"
    puts "Word Count: #{count}"

    i += 1

end

# push values to hash listing
