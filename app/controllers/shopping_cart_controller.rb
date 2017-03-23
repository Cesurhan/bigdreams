class ShoppingCartController < ApplicationController
  include current_cart
  before_action :set_cart

  def create
    @product = Product.find(params[:product_id])
    @cart.add_item(@product)
    redirect_to root_path, notice "Product has been added to your cart! Yeey!"
  end
