#write your code here
def add num1, num2
  num1 + num2
end
def subtract num1, num2
  num1 - num2
end

def sum nums
  total = 0
  for each in nums do
  total += each
  end
  if total == nil
    total = 0
  end
  total
end

def multiply (num1, *rest)
  for each in rest do
    total = (num1 * each)
    num1 = total
  end
total
end

def power num1, num2
  num1 ** num2

end

def factorial num
  total = 1
  if (num-1)* num == 0
    total
  else
    while num > 0
        total = total * (num)
        num -= 1
      end
    end

  total
end
