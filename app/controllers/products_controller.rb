class ProductsController < ApplicationController
  include CurrentCart
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only:  [:index, :show]

  def index
    @products = Product.all
    @items = @cart.items
  end


  def new
    @product = Product.new
  end

  def show
    @items = @cart.items
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Dream Created!'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Dream updated'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo)
  end
end
