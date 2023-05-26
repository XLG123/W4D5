require "my_array"

describe "Array" do
  describe "my_uniq" do
    let(:array) { [1, 2, 2, 3, 3, 333, 333, 4, 5, 5]}
    it "accepts an array as an argument" do
      expect{ Array.new }.to_not raise_error
    end
    
    it "returns an empty array when there are no elements" do
      expect(Array.new).to be_empty
    end
    
    it "returns an array with unique elements" do
      expect(array.my_uniq).to eq([1, 2, 3, 333, 4, 5])
    end
  end
  
  describe "two_sum" do 
    let(:array2) {[-1,0,2,-2,1]}
    it "accepts an array as an argument" do 
      expect{Array.new}.to_not raise_error
    end
    
    it "returns an empty array when there are no elements" do 
      expect(Array.new).to be_empty
    end 
    
    it "returns a array with all pairs with positions where the sum is 0" do
      expect(array2.two_sum).to eq([[0,4],[2,3]])
    end
  end
end

