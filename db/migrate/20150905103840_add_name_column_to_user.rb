class AddNameColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :company_id, :integer
  end
end
