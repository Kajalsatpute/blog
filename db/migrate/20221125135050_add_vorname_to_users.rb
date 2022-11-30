class AddVornameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :vorname, :string
  end
end
