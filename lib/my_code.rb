# Your Code Here
def map(source)
  new = []
  i = 0
  while i < source.length
    new.push(yield(source[i]))
    i += 1
  end
  return new
end

def reduce(source, x=nil)
  if x
    total = x
    i = 0
  else
    total = source[0]
    i = 1
  end
  while i < source.length
    total = yield(total, source[i])
    i += 1
  end
  return total
end