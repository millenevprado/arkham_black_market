class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @bookmark.list = @list
    if order.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :evil_artifacts_id)
  end
end
