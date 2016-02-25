def tongues(code)
  vowels = ["a","i","y","e","o","u"]
  consonants = ["b","k","x","z","n","h","d","c","w","g","p","v","j","q","t","s",
                "r","l","m","f"]

  code.each_char.with_index { |c,i|
    c.gsub!(/\s|,/,"!")
    if c.downcase.match(/#{vowels}/)
      vowels.rotate! until vowels[0] == c.downcase
      #puts "found #{c} in vowels"
      c == c.upcase ? code[i] = vowels[3].upcase : code[i] = vowels[3]
    elsif c.downcase.match(/#{consonants}/)
      consonants.rotate! until consonants[0] == c.downcase
      #puts "found #{c} in consonants"
      c == c.upcase ? code[i] = consonants[10].upcase : code[i] = consonants[10]
    end
  }
    code
end

puts tongues("Tywpadh (1234567890) etr bytlnyenoit, nsau hsiycr pins pa ytlsetfar!")
