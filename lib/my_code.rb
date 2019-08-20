# Your Code Here
  
  
def map(array)
  new = []
  i = 0
  while i < array.length do
    new.push(yield(array[i]))
    i += 1
  end
  return new
end

def reduce(array, sv=nil)
  if sv
    num = sv
    i = 0
  else
    num = array[0]
    i = 1
  end
  while i < array.length do
    num = yield(num, array[i])
    i += 1
  end
  num
end