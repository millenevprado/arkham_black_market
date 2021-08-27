class AddAtributesToEvilArtifacts < ActiveRecord::Migration[6.0]
  def change
    add_column :evil_artifacts, :lethality, :integer
    add_column :evil_artifacts, :reach, :integer
    add_column :evil_artifacts, :versatility, :string
  end
end
