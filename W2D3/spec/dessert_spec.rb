require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:brownie) { Dessert.new("type", 0, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("type")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(0)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
      expect(brownie.ingredients.class).to eq(Array)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Desert.new("type", "quantity", chef) }.to raise_error()
    end
  end

  describe "#add_ingredient" do
    let(:ingredient) {"apple"}
    it "adds an ingredient to the ingredients array" do
      expect(brownie).to receive(:add_ingredient)
      brownie.add_ingredient(ingredient)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(brownie.ingredients).to receive(:shuffle)
      brownie.ingredients.shuffle
    end
  end

  describe "#eat" do
    let(:amount) { 1 }
    let(:dessert) { Dessert.new("type", 5, chef) }
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(5)
      expect(dessert).to receive(:eat)
      dessert.eat(amount)
      # expect(dessert.quantity).to eq(4)
    end
    let(:amount) { 50 }
    it "raises an error if the amount is greater than the quantity" do
      expect(dessert.eat(amount)).to raise_error("not enough left")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(brownie.chef).to receive(:bake)
      brownie.chef.bake(self)
    end
  end
end
