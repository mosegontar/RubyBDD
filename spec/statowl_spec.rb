require "statowl"
require_relative "../lib/statowl/extensions"

describe "StatOwl statistics" do

  describe "the array [1, 2, 3, 4, 5]" do
    input = [1, 2, 3, 4, 5]
    it "returns a mean of 3.0" do
      expect(input.mean).to eq(3.0)
    end
  end

  describe "the array [6, 7, 8, 9, 10]" do
    input = [6, 7, 8, 9, 10]
    it "returns a mean of 8.0" do
      expect(input.mean).to eq(8.0)
    end
  end

  describe "the array [-2, -2, 2, 2]" do
    input = [-2, -2, 2, 2]
    it "returns an average of 0.0" do
      expect(input.average).to eq(0.0)
    end
  end

  describe "the array [1, 2, 3, 99, 10]" do
    input = [1, 2, 3, 99, 10]
    it "returns a median of 3.0" do
      expect(input.median).to eq(3.0)
    end
  end

  describe "the array [6, 7, 8, 999, 1000]" do
    input =  [6, 7, 8, 999, 1000]
    it "returns a median of 8.0" do
      expect(input.median).to eq(8.0)
    end
  end

  describe "the array [6, 7, 8, 999]" do
    input = [6, 7, 8, 999]
    it "returns a median of 7.5" do
      expect(input.median).to eq(7.5)
    end
  end

  describe "[1, 2, 3, 4] when compared based on mean" do
    input = [1, 2, 3, 4]
    it "is less than [2, 3, 4, 5]" do
      expect(input < [2, 3, 4, 5]).to eq(true)
      expect(input > [2, 3, 4, 5]).to eq(false)
    end
    it "is greater than [0, 1, 2, 3]" do
      expect(input < [0, 1, 2, 3]).to eq(false)
      expect(input > [0, 1, 2, 3]).to eq(true)
    end
  end

end