array=[{numbers: [1,2,3,4]},{numbers: [1,2]},
  	   {numbers: [13,4,25,33]},{numbers: [1]}]
sorted = array.sort_by { |k | k[:numbers] }
puts sorted