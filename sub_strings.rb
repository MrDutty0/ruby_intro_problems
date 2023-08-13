def substrings(string, words_to_look_for)
  string = string.downcase
  words_to_look_for = words_to_look_for.map {|word| word.downcase}

  words_to_look_for.reduce(Hash.new(0)) do |substring_hash, word|
    occurences = string.scan(word).length
    substring_hash[word] += occurences unless occurences == 0
    
    substring_hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }