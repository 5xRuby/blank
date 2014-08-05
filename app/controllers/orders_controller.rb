class OrdersController < ApplicationController
  before_action :authenticate_user!
  # GET /orders
  def index
    @orders = current_user.orders
  end

  # GET /orders/:id
  def show
    @order = current_user.orders.find(params[:id])
  end

  # POST /orders/:id
  def create
    if current_cart.line_items.empty?
      redirect_to cart_path, alert: '你的購物車是空的'
    else
      order = Order.new_for current_cart
      if order.save
        redirect_to Order.create_for current_cart, notice: '訂單已經新增'
      else
        redirect_to cart_path, alert: '無法新增訂單'
      end
    end
  end
end
