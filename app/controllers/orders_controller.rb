class OrdersController < ApplicationController
  def index
      @orders = Order.where("user_id = ?", current_user.id)
  end
  def show
    @order = Order.find(params[:id])
  end
  def new
    @order = Order.new
  end
  def create
    @order = current_user.orders.new
    if @order.valid?
      orderitems = []
      total_price = 0
      @shopping_cart.items.each do |product, amount|
        current_orderitem = Orderitem.create(product: Product.find(product.to_i),
        amount: amount, price: Product.find(product.to_i).price)
        orderitems << current_orderitem
        total_price += current_orderitem.amount * current_orderitem.price
      end
      @order.orderitems = orderitems
      @order.total_price = total_price
      if @order.save
        session[:shoppingcart] = nil
        redirect_to user_orders_path
      else
        render :new
      end
    else
      render :new
    end
  end
end
