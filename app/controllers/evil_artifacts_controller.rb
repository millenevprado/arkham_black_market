class EvilArtifactsController < ApplicationController
  def index
    @evil_artifacts = EvilArtifact.all
  end
end
