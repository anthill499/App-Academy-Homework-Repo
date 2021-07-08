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
      expect { Dessert.new('cake', "hella", "gordonramsay") }.to raise_error(ArgumentError)
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
      cheesecake.add_ingredient("milk")
      cheesecake.add_ingredient("eggs")
      cheesecake.add_ingredient("cream")
      cheesecake.mix!
      expect(cheesecake.ingredients).to equal(cheesecake.mix!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(cheesecake.quantity).to eq(10)
      cheesecake.eat(2)
      expect(cheesecake.quantity).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cheesecake.eat(12) }.to raise_error("not enough left!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cheesecake.serve).to eq('Chef gordonramsay the Great Baker has made 10 cakes!')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to_not eq(400)
      cheesecake.make_more
      expect(cheesecake.temp).to eq(400)
    end
  end
end
