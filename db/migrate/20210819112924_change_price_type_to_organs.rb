class ChangePriceTypeToOrgans < ActiveRecord::Migration[6.0]
  def change
    change_column :organs, :price, :integer
  end
end
