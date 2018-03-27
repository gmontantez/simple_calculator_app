def product(*numbers)
  result = 1
  numbers.each { |n| result *= n }
  result
end

#puts product(2, 7, 14)