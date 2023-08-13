def substrings(string, words_to_look_for)
  string = string.downcase

  words_to_look_for = words_to_look_for.map {|word| word.downcase}

  words_to_look_for.reduce(Hash.new(0)) do |substring_hash, word|
    previous_index = 0
    substring_to_check_in = string

    while previous_index do 
      previous_index = substring_to_check_in.index(word)
      break if previous_index.nil?

      substring_hash[word] += 1
      substring_to_check_in = substring_to_check_in[(previous_index + 1)..-1]
    end
    substring_hash
  end
end

dictionary = dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }