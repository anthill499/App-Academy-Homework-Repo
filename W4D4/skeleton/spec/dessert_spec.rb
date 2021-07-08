require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cheesecake) { Dessert.new('cake', 10, Chef.new("gordonramsay")) }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(cheesecake.type).to eq('cake')
    end

    it "sets a quantity" do
      expect(cheesecake.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(cheesecake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('cake', "hella", Chef.new("gordonramsay")) }.to raise_error("thats not even a number!")
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cheesecake.add_ingredient("eggs")
      expect(cheesecake.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      subject(:canoli) { Dessert.new('pastry', 10, Chef.new("markzuckerberg")) }
      canoli.add_ingredient("milk")
      canoli.add_ingredient("eggs")
      canoli.add_ingredient("cream")
      canoli.mix!
      expect(canoli.ingredients).to_not eq(["milk", "eggs", "cream"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(cheesecake.quantity).to eq(10)
      cheesecake.eat(2)
      expect(cheesecake.quantity).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity" do
      subject(:raspberry_pie) { Dessert.new('pie', 10, "bobbyflay") }
      expect { raspberry_pie.eat(12) }.to raise_error("not enough food!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      subject(:raspberry_pie) { Dessert.new('pie', 10, "bobbyflay") }
      expect(cheesecake.serve).to eq('Chef bobbyflay the Great Baker has made 10 pies')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(cheesecake.temp).to_not eq(400)
      cheesecake.make_more
      expect(cheesecake.temp).to eq(400)
    end
  end
end
