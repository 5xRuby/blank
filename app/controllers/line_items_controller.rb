class LineItemsController < ApplicationController
  before_action :authenticate_user!
  def create
    product = Product.find params[:product_id]
    line_item = current_cart.line_items.find_or_initialize_by product: product
    line_item.volume = line_item.volume.to_i + params[:volume].to_i
    if line_item.save
      redirect_to cart_path, notice: '已加入購物車'
    else
      redirect_to product, alert: '無法加入購物車'
    end
  end

  def update
    line_item = current_cart.line_items.find(params[:id])
    line_item.volume = params[:line_item][:volume]
    if line_item.save
      redirect_to cart_path, notice: '已更新數量'
    else
      redirect_to cart_path, alert: '無法更新數量'
    end
  end

  def destroy
    line_item = current_cart.line_items.find(params[:id])
    line_item.destroy
    redirect_to cart_path, notice: '已更新購物車'
  end
end
