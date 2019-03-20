require 'problems'

RSpec.describe "Array" do
  describe '#uniq' do
    arr = [1, 2, 1, 3, 3]

    it 'should return unique elements in the order in which they first appear' do
      expect(arr.uniq).to eq([1,2,3])
    end
  end

  describe '#two_sum' do
    arr = [-1, 0, 2, -2, 1]

    it 'should find all pairs that sum to zero' do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe '#my_transpose' do
    arr = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

    it 'should convert row-oriented and column-oriented square matrices' do
      expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe '#stock_picker' do 
    prices = [10, 20, 40, 70, 110]
    
    it 'should return an array of two days' do
      expect(prices.stock_picker).to be_a(Array)
    end

    it "should return a pair of the greatest days" do
      expect(prices.stock_picker).to eq([0, 4])
    end
    
  end
end