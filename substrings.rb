# substrings.rb
# This method will take in a word as the first argument and an array of valid substrings as the second argument. I should return a hash, listing each substring(case insensitive) that was found in the original string and how many times it was found in the array. 
# Also, make sure the method can handle the searching of multiple words.

require 'pry'

# word = "how".downcase
# word = word.split 

word = "Howdy partner, sit down! How's it going?".downcase
# word = "Howdy How's".downcase
word = word.tr('?' && '!', '').split(' ') # Converted multiple words to array

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
count = 0
hash = {}



word.each{ |word_array| # ITERATES THROUGH WORD ARRAY 

    word = word_array 

    dictionary.each{ |value| # ITERATES THROUGH DICTIONARY ARRAY
        
        count = 0
        contains = word.include?(value)

        puts "#{word} conditional check"

        if contains ==  true && hash.key?(value) == false # find out how to access hash key correctly to check whether that hash exists
            
            count = 1
            hash.store(value, count)

            puts hash
            puts "#{word} includes word #{value} in if"
            
        elsif contains ==  true 
            
            
            puts "#{word} includes word #{value} in elsif"

            hash[value] += 1
            
            puts hash

        end

    } # Ends dictionary 'each' check

}

puts "#{hash}"








# START METHOD 
# def substring(word, dictionary)
    
    
#     hash = {}

#     if word.length == 1

#         count = dictionary.count(word[0]) # store count for word
#         hash.store(word[0], count) # push this word(key) and hash value(count) in hash
     
#     else
#         word.each{ |value|
            
#             count = dictionary.count(value) # store count for word
#             hash.store(value, count) # push this word(key) and hash value(count) in hash

#         }

#     end

#     puts "#{hash}"

# end
# END METHOD 


# substring(word, dictionary)
# substring(word2, dictionary)