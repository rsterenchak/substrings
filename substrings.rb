# substrings.rb
# This method will take in a word as the first argument and an array of valid substrings as the second argument. It should return a hash, listing each substring(case insensitive) that was found in the original string and how many times it was found in the array. 
# Also, make sure the method can handle the searching of multiple words.

require 'pry'

# Single word case
word = "Howdy".downcase
word = word.split

# Multi word case
word2 = "Howdy partner, sit down! How's it going?".downcase
word2 = word2.tr('?' && '!', '').split(' ') 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
count = 0


# START METHOD
def substring(word, dictionary)

    hash = {}

    word.each{ |word_array| # ITERATES THROUGH WORD ARRAY 

        word = word_array 

        dictionary.each{ |value| # ITERATES THROUGH DICTIONARY ARRAY
            
            count = 0
            contains = word.include?(value)

            if contains ==  true && hash.key?(value) == false # find out how to access hash key correctly to check whether that hash exists
                
                count = 1
                hash.store(value, count)

            elsif contains ==  true 
                
                hash[value] += 1
    
            end

        } # Ends dictionary 'each' check

    }

    puts "#{hash}"

end # ENDS METHOD

puts "\n"

puts "The following is the number of dictionary words contained in the inputted strings: "
puts "\n"

puts "String_array 1: #{word}"
substring(word, dictionary)
puts "\n"

puts "String_array 2: #{word2}"
substring(word2, dictionary)
puts "\n"
