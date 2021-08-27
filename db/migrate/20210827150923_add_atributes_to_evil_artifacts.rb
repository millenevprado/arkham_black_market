class AddAtributesToEvilArtifacts < ActiveRecord::Migration[6.0]
  def change
    add_column :evil_artifacts, :lethality, :integer, default: 0
    add_column :evil_artifacts, :reach, :integer, default: 0
    add_column :evil_artifacts, :versatility, :string, default: ''
  end
end
