class OrdersController < ApplicationController
  def new
    @order = Order.new
    @evil_artifact = EvilArtifact.find(params[:evil_artifact_id])
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    evil_artifact = EvilArtifact.find(params[:evil_artifact_id])
    @order.evil_artifact = evil_artifact
    if @order.save
      redirect_to order_path(@order)
    else
      redirect_to evil_artifact_path(@order.evil_artifact)
    end
  end

  def update
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end
end
