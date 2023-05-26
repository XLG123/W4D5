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

  describe "my_transpose" do
    let(:array3) {[ [0, 1, 2],
                    [3, 4, 5],
                    [6, 7, 8] ]}
    it "accepts an array as an argument" do 
      expect{Array.new}.to_not raise_error
    end

    it "returns an empty array when there are no elements" do 
      expect(Array.new).to be_empty
    end

    it "returns an array where the rows and columns are interchanged" do
      expect(array3.my_transpose).to eq([[0, 3, 6],
                                         [1, 4, 7],
                                         [2, 5, 8] ])
    end
  end

  describe "stock_picker" do
    let(:array4) {[2, 1, 3, 8, 3, 5, 7, 10]}
    it "accepts an array as an argument" do 
      expect{Array.new}.to_not raise_error
    end

    it "returns an empty array when there are no elements" do 
      expect(Array.new).to be_empty
    end

    it "returns an array of the most profitable pair of days on which to first buy the stock and then sell the stock" do
      expect(array4.stock_picker).to eq([1, 7])
    end

  end

end

