def map(array)
  count = 0
  result = []
  while array[count] do
    result[count] = yield(array[count])
    count += 1
  end
  return result
end

def reduce(array, starting_value = 0)
  count = 0
  result = starting_value
  if result == 0 
    result = array[count]
    count += 1
  end
  while count < array.length do
      result = yield(result, array[count])
      count += 1
  end
  return result
end









