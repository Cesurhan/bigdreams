class ShoppingCartController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def add
    session[:shopping_cart] << 'product_id'    
  end


  def create
    @product = Product.find(params[:product_id])
    @cart.add_item(@product,1)
    redirect_to products_path, notice: "Product has been added to your cart! Yeey!"
  end


end
