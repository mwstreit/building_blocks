#create method that takes two inputs: a string and an array of substrings
#should return a hash of substrings found in the original string and how
#many times they are found.  should work for multiple words.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, arr)
  output = Hash.new(0)

  substrings = string.downcase.split(' ')

  substrings.each do |substring|
    arr.each do |word|
      if substring.gsub(/.,!:;?'"/, '').include?(word)
        output[word] += 1
      end
    end
  end
  puts output
end


substrings("Howdy partner, sit down! How's it going?",dictionary)
