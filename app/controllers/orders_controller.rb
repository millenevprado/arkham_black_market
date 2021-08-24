class OrdersController < ApplicationController
  def create
    @order = Order.new
    @order.user = current_user
    @order.evil_artifacts = EvilArtifact.find(params[:evil_artifact_id])
    if order.save
      redirect_to evil_artifact_orders_path(@order)
    else
      redirect_to evil_artifact_path(@order.evil_artifacts)
    end
  end

  def update
  end
end
