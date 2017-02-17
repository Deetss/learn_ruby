#write your code here
def translate input
  vowels = ['a','e','i','o','u']
  word_split = input.downcase.split(' ')

  for word in word_split
    if vowels.include?(word[0])
    word.replace(word + "ay")
    else
      if !vowels.include?(word[1]) && !vowels.include?(word[2])
        not_first = word.slice(3..-1)
        first_three = word.slice(0..2)
        word.replace(not_first + first_three + 'ay')
      elsif word.slice(1..2) == 'qu' && !vowels.include?(word[0])
        not_first = word.slice(3..-1)
        first_three = word.slice(0..2)
        word.replace(not_first + first_three + 'ay')
      elsif word.slice(0..1) == 'qu'
        not_first = word.slice(2..-1)
        first_two = word.slice(0..1)
        word.replace(not_first + first_two + 'ay')
      elsif !vowels.include?(word[1])
        not_first = word.slice(2..-1)
        first_two = word.slice(0..1)
        word.replace(not_first + first_two + 'ay')
      else
        not_first = word.slice(1..-1)
        first = word.slice(0)
        word.replace(not_first + first + 'ay')
      end
    end
  end
  word_split.join(' ')
end
