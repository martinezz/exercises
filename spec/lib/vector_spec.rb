require "spec_helper"
require "vector"

# When implementing, you cannot use array methods #pop, #min and #max

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

  #map
  describe "#add" do
    it "adds a number to each array element" do
      vector = Vector.new([3,5])

      expect(vector.add(1)).to eq [4,6]
      expect(vector.add(3)).to eq [6,8]
    end
  end

  #map
  describe "#mul" do
    it "multiplies each number by itself" do
      vector = Vector.new([3,5])

      expect(vector.mul).to eq [9,25]
    end
  end

  #join
  describe "#to_s" do
    it "serializes array to string" do
      vector = Vector.new([3,5,6])

      expect(vector.to_s).to eq "Values: 3, 5, 6"
    end
  end

  # cannot use native "pop"
  describe "#pop" do
    it "serializes array to string" do
      vector = Vector.new([3,5,6])

      expect(vector.pop).to eq 6
      expect(vector.pop).to eq 5
      expect(vector.pop).to eq 3
      expect(vector.pop).to eq nil
    end
  end
end
