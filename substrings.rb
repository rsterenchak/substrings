# substrings.rb
# This method will take in a word as the first argument and an array of valid substrings as the second argument. I should return a hash, listing each substring(case insensitive) that was found in the original string and how many times it was found in the array. 
# Also, make sure the method can handle the searching of multiple words.

word = "below"
word = word.split # Converted single word to array

word2 = "Howdy partner, sit down! How's it going?"
word2 = word2.split(' ') # Converted multiple words to array

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
count = 0
hash = {}


def substring(word, dictionary)
    
    
    hash = {}

    if word.length == 1

        count = dictionary.count(word[0]) # store count for word
        hash.store(word[0], count) # push this word(key) and hash value(count) in hash
     
    else
        word.each{ |value|
            
            count = dictionary.count(value) # store count for word
            hash.store(value, count) # push this word(key) and hash value(count) in hash


        }

    end
    puts "#{hash}"

end



substring(word, dictionary)
substring(word2, dictionary)