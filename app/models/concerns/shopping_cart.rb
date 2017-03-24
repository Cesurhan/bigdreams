class ShoppingCart
  attr_reader :items

	def initialize(cart)
    @items = cart
	end

	def add_item(product, amount=1)
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
