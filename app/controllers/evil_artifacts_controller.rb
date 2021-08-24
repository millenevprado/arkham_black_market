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
end
