def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  foods = []
  counter = 0
  while counter < src.length do 
    food = src[counter]   
    foods.push( "I love #{food[0]} and #{food[1]} on my pizza")
    counter += 1
  end
  foods
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  newArr = []
  counter = 0 
  while counter < src.length do 
    newArr.push(src[counter][0] > src[counter][1] ? src[counter][0] : src[counter][1])
    counter += 1 
  end
  newArr
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
  counter = 0 
  while counter < src.length do 
    if (src[counter][0] % 2 == 0) && (src[counter][1] % 2 == 0)
      total += (src[counter][0] + src[counter][1])
    end
    counter += 1 
  end
  total 
end
