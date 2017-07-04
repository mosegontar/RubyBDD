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

  describe "the Array [-2, -2, 2, 2]" do
    input = [-2, -2, 2, 2]
    it "returns an average of 0.0" do
      expect(input.average).to eq(0.0)
    end
  end

end