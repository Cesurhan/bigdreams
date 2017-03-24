module CurrentCart
	extend ActiveSupport::Concern

	def add
			session[:product_id]=@product.id
	end 

	private
		def set_cart
			session[:shopping_cart] ||= []
			@cart = ShoppingCart.new(session[:shopping_cart])
		end
end
