require "spec_helper"
require "vector"

# When implementing, you cannot use array methods #min and #max
   # each
describe Vector do
  describe "#maximum" do
    it "returns the largest element from array" do
      vector = Vector.new([3,5,2,1])

      expect(vector.maximum).to eq 5

      vector = Vector.new([-3,-5])

      expect(vector.maximum).to eq -3
    end
  end

  describe "#minimum" do
    it "returns the smallest element from array" do
      vector = Vector.new([3,5,2])

      expect(vector.minimum).to eq 2
    end
  end

  describe "#total" do
    it "returns the sum of elements from array" do
      vector = Vector.new([3,5,2,2])

      expect(vector.total).to eq 12
    end
  end

  describe "#select_odd" do
    it "returns new array of odd elements from array" do
      vector = Vector.new([3,5,2])

      expect(vector.select_odd).to eq [3,5]
    end
  end

  describe "#select_even" do
    it "returns new array of even elements from array" do
      vector = Vector.new([3,5,2,4])

      expect(vector.select_even).to eq [2,4]
    end
  end
end
