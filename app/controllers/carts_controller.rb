class CartsController < ApplicationController
  before_action :authenticate_user! # 只有登入的人才可訪問
  def show
    @cart = current_cart
  end

  def destroy
    current_cart.destroy
    redirect_to cart_path
  end
end
