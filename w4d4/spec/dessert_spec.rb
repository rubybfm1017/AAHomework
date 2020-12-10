require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:puding) {Dessert.new ("puding", 10 ,chef)}

  describe "#initialize" do
    it "sets a type" do
        expect(puding.type).to eq("puding")
    end

    it "sets a quantity" do
        expect(puding.quantity).to eq(10)

    end

    it "starts ingredients as an empty array" do
      expect (puding.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("candy", "many", 5) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
        puding.add_ingredient("egg")
        expect(puding.ingredients).to include("egg")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
        ingredients = [ "egg", "sugar", "butter"]

        ingredients.each do |ingredient|
        puding.add_ingredient(ingredient)
        end

        expect(puding.ingredients).to eq(ingredients)
        puding.mix!
        expect(puding.ingredients).not_to eq(ingredients)
        expect(puding.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      puding.eat(10)
      expect(puding.quantity).to eq(50)
    end

    it "raises an error if the amount is greater than the quantity" do 
        expect { puding.eat(500)}.to raise_error("too much")
    end
    
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do

      allow(chef).to receive(:titleize).and_return("Chef Tucker the Great Baker")
      expect(brownie.serve).to eq("made 100 pudings!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(puding)
      puding.make_more
    end
  end
end
