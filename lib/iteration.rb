def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
string_array = []
row_index = 0 
while row_index < src.count do 
  string_array.push("I love "+src[row_index][0]+" and "+src[row_index][1]+" on my pizza")
  row_index += 1
end
string_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
greater_numbers = []
row_index = 0 
while row_index < src.count do 
  if src[row_index][0] > src[row_index][1]
    greater_numbers.push(src[row_index][0])
  else greater_numbers.push(src[row_index][1])
  end
  row_index += 1
end
greater_numbers
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
total = 0
row_index = 0 
while row_index < src.count do 
  value1 = src[row_index][0]
  value2 = src[row_index][1]
  if value1.even? && value2.even?
  sum = value1 + value2
  total += sum
end
  row_index += 1
end
total
end
