# Your Code Here
def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array.push(yield source_array[i])
    i += 1
  end
  return new_array
end

def reduce(source_array, starting_point = nil)
#if we have a starting_point we set a new variable as the starting_point like we
#did with the long reduction
  if starting_point
    reduction = starting_point
    i = 0
  else
    #DEFAULT STATEMENT
    reduction = source_array[0]
    i = 1
  end
  while i < source_array.length do
    #for yield: reduction must be the first variable it takes because
    # it is the variable that changes with each loop
    #memo is the sum(accumulation/reduction) - why reduction is first
    #n is the new number(element) taken from the array
    #for the DEFAULT we start with the reduction = source_array[0]
    #and source_array[1]
    #  - vs -
    #if starting_point we start loop with reduction = 100(given starting_point)
    #and source_array[0]
    reduction = yield(reduction, source_array[i])
    i += 1
  end
reduction
end
#see notes on test page to understand looping
