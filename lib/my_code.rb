def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield (source_array[i]))     
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = nil, &block)
  if starting_point.nil?
    source_array.reduce(&block)
  else
    source_array.reduce(starting_point, &block)
  end
end


