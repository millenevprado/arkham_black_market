class OrdersController < ApplicationController
  def create
    @order = Order.new
    @order.user = current_user
    @order.evil_artifacts = EvilArtifact.find(params[:evil_artifact_id])
    if order.save
      redirect_to orders_path(@order)
    else
      render :new
    end
  end
end
