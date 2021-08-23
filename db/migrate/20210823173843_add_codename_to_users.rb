class AddCodenameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :codename, :string
  end
end
