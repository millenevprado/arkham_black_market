class AddCategoryToEvilArtifacts < ActiveRecord::Migration[6.0]
  def change
    add_column :evil_artifacts, :category, :string
  end
end
