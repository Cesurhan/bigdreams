class ShoppingCart
  attr_reader :items

	def initialise(cart)
		@items = []

		cart.each do |item|
			product = Product.find(item[“product_id”])
			add_item(product, items[“amount”])
		end
	end

	def add_item(product, amount)
    item = CartItem.new(product, amount)
    @items << item
  end

  def remove_item(product)
  	@items -= [something]
  end

  def reset
  	@items = []
  end
end

class CartItem
	attr_accessor :amount

  def initialize(product, amount = 1)
  	@product_id = product.id
  	@amount = amount
  end

  def product
  	Product.find(@product_id)
  end
end
