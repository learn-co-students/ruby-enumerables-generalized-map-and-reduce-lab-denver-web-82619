def map(array)
  new = []
  i = 0
  while i <array.length do
    new.push(yield(array[i]))
    i += 1
  end
  return new
end


def reduce(array, starting_point=nil)
  if starting_point
    a = 0
    answer = starting_point
  else
    a = 1
    answer = array[0]
  end
    while a < array.length do	 
    answer = yield(answer, array[a])
      a += 1
 end
    return answer
end

  