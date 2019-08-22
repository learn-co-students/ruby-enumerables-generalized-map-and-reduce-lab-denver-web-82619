# Your Code Here

def map(source_array)
  count = 0
  new_array = []
  while source_array[count] do
  new_array.push(yield(source_array[count]))
  count += 1
  end
  return new_array
end

def reduce(source_array, starting_point = 0)
  everTrue = false
  alwaysTrue = true
  total = starting_point
  count = source_array.length - 1
  while (count >= 0) do
    if source_array[count]
      everTrue = true
      total = yield(total, source_array[count])
      count -= 1
    else
      alwaysTrue = false
      count -= 1
    end
  end
  if alwaysTrue == true
    return total
  else
    yield(everTrue, alwaysTrue)
  end
end
