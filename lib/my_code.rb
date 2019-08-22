# Your Code Here
def map(source_array)
  new_array = []
  source_array.each do |value|
    new_array.push(yield(value))
  end
  new_array
end

def reduce(source_array, starting_point = 0)
  total = starting_point
  for it in source_array do
    total = yield(total, it)
  end
  if total == 0
    return true
  end
  total
end