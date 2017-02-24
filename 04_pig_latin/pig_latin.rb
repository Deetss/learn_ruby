#write your code here
def translate input
  vowels = ['a','e','i','o','u']
  word_split = input.split(' ')

  for word in word_split
    #check capitalization
    word_cap = false
    if word == word.capitalize
      word_cap = true
    end
    #check if first letter is a vowel
    if vowels.include?(word[0])
    word.replace(word + "ay")
    else
      #check first 3 letters for consonants
      if !vowels.include?(word[1]) && !vowels.include?(word[2])
        ending = word.slice(3..-1)
        first_three = word.slice(0..2)
        word.replace(ending + first_three + 'ay')
      elsif word.slice(1..2) == 'qu' && !vowels.include?(word[0])
        ending = word.slice(3..-1)
        first_three = word.slice(0..2)
        word.replace(ending + first_three + 'ay')
      elsif word.slice(0..1) == 'qu'
        ending = word.slice(2..-1)
        first_two = word.slice(0..1)
        word.replace(ending + first_two + 'ay')
      elsif !vowels.include?(word[1])
        ending = word.slice(2..-1)
        first_two = word.slice(0..1)
        word.replace(ending + first_two + 'ay')
      else
        ending = word.slice(1..-1)
        first = word.slice(0)
        word.replace(ending + first + 'ay')
      end
    end
    #change capitalization of the word if it was capitalized to begin with
    if word_cap
      word.downcase
      word.capitalize!
    end
  end

  word_split.join(' ')
end
