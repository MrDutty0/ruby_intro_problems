def caesar_cipher(string, shift_by)
  letters = ("a".."z").to_a * 2 + ("A".."Z").to_a * 2

  shifted_string = string.split("").map do |char|
    idx = letters.rindex(char)
    next char if idx.nil?

    letters[idx - shift_by]
  end.join
end

caesar_cipher("What a string!", 5) # => "Rcvo v nomdib!"