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


end 
