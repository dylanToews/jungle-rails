require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should do something' do 
      @product = Product.new
      expect(@product.name).to be_nil
    end
    
    it 'should validate name' do
      @product = Product.new("name" => "product name")
      expect(@product.name).to be_present
    end

    it 'should validate price' do
      @product = Product.new("price" => 678)
      expect(@product.price).to be_present
    end

    it 'should validate quantity' do
      @product = Product.new("quantity" => 678)
      expect(@product.quantity).to be_present
    end
    
    it 'should validate category' do
      @product = Product.new("category_id" => 1)
      expect(@product.category_id).to be_present
    end

  end
end