require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do
   
   it 'is valid with valid attributes' do
      @category = Category.new
      params = {
      name: 'Tree',
      description: 'a big ole tree',
      quantity: 7,
      category: @category,
      price_cents: 25000
      }
      expect(Product.new(params)).to be_valid
    end

    it "is not valid without a name" do
      @category = Category.new
      params = {
      name: nil,
      description: 'a big ole tree',
      quantity: 7,
      category: @category,
      price_cents: 25000

      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a price" do
      @category = Category.new
      params = {
      name: 'Tree',
      description: 'a big ole tree',
      quantity: 7,
      category: @category,
      price_cents: nil
      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a quantity" do
      @category = Category.new
      params = {
      name: 'tree',
      description: 'a big ole tree',
      quantity: nil,
      category: @category,
      price_cents: 25000
      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a category" do
      @category = Category.new
      params = {
      name: 'tree',
      description: 'a big ole tree',
      quantity: 7,
      category: nil,
      price_cents: 25000
      }
      expect(Product.new(params)).to_not be_valid
    end
  end
end
