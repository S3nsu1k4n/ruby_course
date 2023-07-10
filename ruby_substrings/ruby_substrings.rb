dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word="", array_of_substrings)
  word = word.downcase
  array_of_substrings.reduce(Hash.new(0)) do |hash, string|
    hash[string] = word.scan(string).length if word.include?(string)
    hash
  end
  
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
