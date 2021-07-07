# My generalized Map
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i])) # <== Unique work
    i += 1
  end
  return new
end

# My generalized Reduce
def reduce(source_array, starting_point=nil)
  if starting_point
    i = 0
    result = starting_point
  else
    i=1
    result = source_array[0]
  end
  
  while i < source_array.length do
    result = yield(result, source_array[i])
    
    i += 1
  end
  
  return result
end