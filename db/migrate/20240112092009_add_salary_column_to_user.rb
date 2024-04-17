class AddSalaryColumnToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :salary, :integer
  end
end
