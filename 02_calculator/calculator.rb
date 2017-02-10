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
#def factorial num
  #if num != 0
    #while num > 0
      #if num == 1
        #total = num * (num)
        #num -= 1
      #else
        #total = num * (num -1)
        #num -= 1
      #end

    #end
  #else
    #total = 1
  #end
  #total
#end
