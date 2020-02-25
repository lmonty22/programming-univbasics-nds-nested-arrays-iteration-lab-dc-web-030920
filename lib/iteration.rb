def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair

#As a while loop. 
# array = []
# index = 0 
# while index < src.length do 
#   array.push("I love #{src[index][0]} and #{src[index][1]} on my pizza")
#   index += 1 
# end 
# array
#end

src.map do |food_array| # collect/map creates a new array for us so we don't have to :) 
  "I love #{food_array[0]} and #{food_array[1]} on my pizza"
end 
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  src.map do |number_pairs|
    number_pairs.max()
  end
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
#this 
total = 0 
src.each do |number_pairs|
  if number_pairs[0].even? && number_pairs[1].even? 
    total += number_pairs[0] + number_pairs[1]
  end 
end 
total
end
