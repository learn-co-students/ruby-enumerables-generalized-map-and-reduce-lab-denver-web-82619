#1.
def map_to_negativize(array)
    p array.map{|n| n*-1}
end 
map_to_negativize([1,2,3,-9])

#2. 
def map_to_no_change(array)
  p array.map{|n|n}
end 
map_to_no_change([1,2,3])

#3.
def map_to_double(array)
  p array.map{|n| n*2}
end 
map_to_double([1,2,3])

#4.
def map_to_square(array)
  p array.map{|n| n**2}
end 
map_to_square([1,2,3])

#5.
def reduce_to_total(source_array, starting_point)
  p source_array.reduce(sum, starting_point)
end 
reduce_to_total([3,4,5,2], 0)

#6. 
def reduce_to_all_true(source_array)
    if source_array.include?(false)
      return false 
    else 
      return true
    end
  end 
  
reduce_to_all_true([1, 2, true, "razmatazz", false])

#7. 
def reduce_to_any_true(source_array)
    if source_array.include?(false)
      return false 
    else 
      return true
    end
  end 
  
reduce_to_any_true([1, 2, true, "razmatazz", false])



