class ShoppingCartController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    @product = Product.find(params[:product_id])
    @cart.add(@product)
    redirect_to products_path, notice: "Product has been added to your cart! Yeey!"
  end



end
