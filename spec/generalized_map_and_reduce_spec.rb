require 'spec_helper'

describe 'my own map' do
  it "returns an array with all values made negative" do
    expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
  end

  it "returns an array with the original values" do
    dune = ["paul", "gurney", "vladimir", "jessica", "chani"]
    expect(map(dune){|n| n}).to eq(dune)
  end

  it "returns an array with the original values multiplied by 2" do
    expect(map([1, 2, 3, -9]){|n| n * 2}).to eq([2, 4, 6, -18])
  end

  it "returns an array with the original values squared" do
    expect(map([1, 2, 3, -9]){|n| n * n}).to eq([1, 4, 9, 81])
  end
end

describe 'my own reduce' do
  it "returns a running total when not given a starting point" do
    source_array = [1,2,3]
    expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
    #for each loop -  we take the variable reduction (memo)
    #and source_array[i]9=(n)
    #so that the first pass(DEFAULT i = 1 and reduction = source_array[0])
                  #           memo = source_array[0] = 1
                    #         n = source_array[i] = 2
                      # so that 1 + 2 = 3 and become new reduction(memo)
                      #this repeats again with i = 2
                      #  3 (memo) + 3 (source_array[2]) = 6 (now memo/reduction)
                      #now i = 3 > source_array.length = 3 so exit loop
                      #all you need is to return the reduction
  end

  it "returns a running total when given a starting point" do
    source_array = [1,2,3]
    starting_point = 100
    #so for this one *not DEFAULT!*
    # we have a starting_point
    # so reduction = starting_point which is 100  which is memo
    # and THIS TIME i = 0
    # again reduction = memo
    # and n = source_array[i] which starts at 0
    #so for our first pass of the loop...
        # we take 100 as memo
        # and source_array[0] (which is 1) as n
        #i = 0               100 + 1 = memo
        #second loop i = 1    101 + 2 = memo
        #third loop i = 2     103 + 3 = memo
        # at this point i = 3 > source_array.length of 3 so loop exits
    expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)
  end

  it "returns true when all values are truthy" do
    source_array = [1, 2, true, "razmatazz"]
    #this is where it gets tricky
    # we start the DEFAULT condition
    #first loop : i = 1
      # reduction = source_array[0] which is 1 here
      #so for our first loop here
      # memo = reduction = source_array[0] = 1
      # n = source_array[1] = 2
      # memo(1) and n(2) are BOTH true = reduction
    #second loop : i = 1
      # reduction from last loop becomes new memo
      # so memo = true
      # n = source_array[2] = true
      # BOTH memo is true && n is true
      #new reduction value is true
    #third loop : i = 2
      # reduction from last loop becomes new memo
      # so memo = true
      # n = source_array[3] = "razmatazz"
      # memo(true) && n("razmatazz") evaluate to true
      #new reduction value is true
    # i = 3; source_array.lenth = 3 ; loop stops
    #final reduction is true
    expect(reduce(source_array){|memo, n| memo && n}).to be_truthy
  end

  it "returns false when any value is false" do
    source_array = [1, 2, true, "razmatazz", false]
    expect(reduce(source_array){|memo, n| memo && n}).to be_falsy
    # we start the DEFAULT condition
    #first loop : i = 1
      # reduction = source_array[0] which is 1 here
      #so for our first loop here
      # memo = reduction = source_array[0] = 1
      # n = source_array[1] = 2
      # memo(1) and n(2) are BOTH true = reduction
    #second loop : i = 1
      # reduction from last loop becomes new memo
      # so memo = true
      # n = source_array[2] + "razmatazz"
      # BOTH memo is true && n is true
      #new reduction value is true
    #third loop : i = 2
      # reduction from last loop becomes new memo
      # so memo = true
      # n = source_array[3] = false
      # memo(true) && n("razmatazz") evaluate to false
      #new reduction value is false
    # i = 3; source_array.lenth = 3 ; loop stops
    #final reduction is false
  end

  it "returns true when a truthy value is present" do
    source_array = [ false, nil, nil, nil, true]
    expect(reduce(source_array){|memo, n| memo || n}).to eq(true)
    # we start the DEFAULT condition
    #first loop : i = 1
      # reduction = source_array[0] which is false here
      #so for our first loop here
      # memo = reduction = source_array[0] = false
      # n = source_array[1] = nil
      # memo(false) OR n(nil) evaluates to false (b/c neither is true)
    #second loop : i = 1
      # reduction from last loop becomes new memo
      # so memo = false
      # n = source_array[2] = nil
      # memo is false OR n is nil  evaluates to false (b/c neither is true)
      #new reduction value is false
    #third loop : i = 2 => same as second loop
      # reduction is still false
    #fourth loop : i = 3
      # reduction from last loop becomes new memo
      # so memo = false
      # n = source_array[3] = true
      # memo(false) OR n(true) evaluate to true (becasue one is true!)
      #new reduction value is true
    # i = 5; source_array.lenth = 5 ; loop stops
    #final reduction is true
  end

  it "returns false when no truthy value is present" do
    source_array = [ false, nil, nil, nil]
    expect(reduce(source_array){|memo, n| memo && n}).to eq(false)
    #see above && logic
  end
end
