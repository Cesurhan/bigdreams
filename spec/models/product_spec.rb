require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      product = Product.new(name: "")
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it "is invalid without a description" do
      product = Product.new(description: "")
      product.valid?
      expect(product.errors).to have_key(:description)
    end

    it "is invalid without a price" do
      product = Product.new(price: "")
      product.valid?
      expect(product.errors).to have_key(:price)
    end

  end
end
