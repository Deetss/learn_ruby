#simon says echo should echo hello
def echo input
  echo = input
end
def shout input
  shout = input.upcase
end
def repeat input, amount = 1
  repeat = input
  amount -= 1
  if amount > 1
   amount.times do
    repeat +=  " " + input
    end
  else
    repeat += " " + input
  end
  repeat
end

def start_of_word input, num
  cutoff = num - 1
  word = input[0..cutoff]
  word
end

def first_word input
  input = input.split(' ')
  input[0]
end

def titleize input
  little_words = ['a', 'an', 'the','for', 'and', 'nor','but', 'or', 'yet', 'so','over']
  words = input.split(" ")
  if words.length < 2
    words[0].capitalize
  else
    for each in words
      if little_words.include?(each) and each != words[0]
        each.downcase!
      else
        each.capitalize!
      end
    end
    words = words.join(" ")
  end
end
