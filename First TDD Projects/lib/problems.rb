class Array
  def uniq
    new_arr = []
    self.each do |el|
      new_arr << el if !new_arr.include?(el)
    end
    new_arr
  end

  def two_sum
    pairs = []
    self.each_with_index do |el, i|
      self.each_with_index do |el2, j|
        pairs << [i, j] if (el + el2 == 0) && i < j
      end
    end
    pairs
  end

  def my_transpose
    tranposed = Array.new(self.length) {[]}

    self.each_with_index do |subArr, i|
      subArr.each_with_index do |el, j|
        tranposed[j] << el
      end
    end
    tranposed
  end

  def stock_picker
    greatest_profit = 0
    days = nil

    (self.length-1).times do |i|
      (self.length).times do |j|
        profit = self[j] - self[i]
        if i != j && profit > greatest_profit
          greatest_profit = profit
          days = [i, j]
        end
      end
    end

    days
  end
end

