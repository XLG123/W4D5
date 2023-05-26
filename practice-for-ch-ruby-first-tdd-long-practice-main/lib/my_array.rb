class Array
  def my_uniq
    hash = {}
    self.each { |ele| hash[ele] = 1 }
    hash.keys
  end
end