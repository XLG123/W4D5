class Array
  def my_uniq
    hash = {}
    self.each { |ele| hash[ele] = 1 }
    hash.keys
  end

  def two_sum
    hash = {}
    res = []
    self.each_with_index do |ele,idx|
      if hash[ele]
        res << [hash[ele],idx]
      end 
      hash[ele * -1] = idx 
    end 
    return res.sort
  end 

  def my_transpose
		transposed_arr = []
		i = 0
		j = 0
		while j < self[0].length
			new_sub_arr = []
			while i < self.length
				new_sub_arr << self[i][j]
				i += 1
			end
			transposed_arr << new_sub_arr
			i = 0
			j += 1
		end
		transposed_arr
  end

  def stock_picker
    min = 999999999
    max = 0
    
    min_idx = 0
    max_idx = 0

    self.each_with_index do |price, idx|
      if [min, price].min < min
        min = [min, price].min
        min_idx = idx
      end
      
      if [max, price - min].max > max
        max = [max, price-min].min
        max_idx = idx
      end
    end
    [min_idx, max_idx]
  end
end