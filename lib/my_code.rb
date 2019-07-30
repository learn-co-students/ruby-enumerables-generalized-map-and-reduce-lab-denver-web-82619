
  #it "returns an array with all values made negative" do
    #expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, #9])

def my own map(soure_array)  
  source_array.map {|n| n * -1}
end

  #it "returns an array with the original values" do
    #dune = ["paul", "gurney", "vladimir", "jessica", "chani"]
    #expect(map(dune){|n| n}).to eq(dune)
    
def my own map(source_array)  
  source_array.map {|n| n}
  end
  

  #it "returns an array with the original values multiplied by #2" do
   # expect(map([1, 2, 3, -9]){|n| n * 2}).to eq([2, 4, 6, -18]
   
def my own map(source_array)  
  source_array.map {|n| n * 2}
  end   
   
   # it "returns an array with the original values squared" do
    #expect(map([1, 2, 3, -9]){|n| n * n}).to eq([1, 4, 9, 81])
  
def my own map(source_array)  
  source_array.map {|n| n * n }
  end  
  
  
def my own reduce(source_array, n) 
  source_array.reduce { |sum, n| sum + n }
end

  #it "returns a running total when not given a starting #point" do
    #source_array = [1,2,3]
    #expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
    
def my own reduce(source_array, starting_point)
  source_array.reduce(0) { |sum, n| sum + n }
end
  

  #it "returns a running total when given a starting point" do
    #source_array = [1,2,3]
   # starting_point = 100
    #expect(reduce(source_array, starting_point){|memo, n| #memo + n}).to eq(106)
  
def my own reduce(source_array)
  source_array.all?
end

  #it "returns true when all values are truthy" do
    #source_array = [1, 2, true, "razmatazz"]
    #expect(reduce(source_array){|memo, n| memo && n}).to #be_truthy
  
def my own reduce(source_array)
  source_array.all? { |n| !n}
end


 # it "returns false when any value is false" do
    #source_array = [1, 2, true, "razmatazz", false]
    #expect(reduce(source_array){|memo, n| memo && n}).to #be_falsy
    
def my own reduce(source_array)
  source_array.reduce { |n| n || n}
end
  

  #it "returns true when a truthy value is present" do
    #source_array = [ false, nil, nil, nil, true]
    #expect(reduce(source_array){|memo, n| memo || n}).to #equal new
    
  def my own reduce(source_array)
    source_array.reduce { |n| n && n}
  end
  

 # it "returns false when no truthy value is present" do
    #source_array = [ false, nil, nil, nil]
   # expect(reduce(source_array){|memo, n| memo && n}).to #equal false
  




