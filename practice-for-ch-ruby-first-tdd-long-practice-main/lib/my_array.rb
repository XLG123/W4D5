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

end 
