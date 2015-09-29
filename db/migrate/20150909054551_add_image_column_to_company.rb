class AddImageColumnToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :image, :binary
  end
end
