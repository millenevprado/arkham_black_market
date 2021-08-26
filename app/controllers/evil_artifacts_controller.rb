class EvilArtifactsController < ApplicationController
  def index
    @evil_categories = EvilArtifact::CATEGORIES
  end

  def artifacts_of_a_category
    @evil_artifacts = EvilArtifact.where(category: params[:category])
  end

  def show
    @evil_artifact = EvilArtifact.find(params[:id])
  end

  def new
    @evil_artifact = EvilArtifact.new
  end

  def create
    @evil_artifact = EvilArtifact.new(evil_artifact_params)
    @evil_artifact.user = current_user
    if @evil_artifact.save
      redirect_to evil_artifact_path(@evil_artifact), notice: 'Evil artifact was successfully created.'
    else
      render :new
    end
  end

  def edit
    @evil_artifact = EvilArtifact.find(params[:id])
  end

  def update
    @evil_artifact = EvilArtifact.find(params[:id])
    if @evil_artifact.user == current_user
      @evil_artifact.update(evil_artifact_params)
      flash[:notice] = 'Updated!'
    else
      flash[:notice] = 'Not authorized!'
    end
    redirect_to evil_artifact_path(@evil_artifact)
  end

  def destroy
    @evil_artifact = EvilArtifact.find(params[:id])
    @evil_artifact.destroy if @evil_artifact.user == current_user
    redirect_to evil_artifacts_path
  end

  private

  def evil_artifact_params
    params.require(:evil_artifact).permit(:name, :description, :price, :category, photos: [])
  end
end
