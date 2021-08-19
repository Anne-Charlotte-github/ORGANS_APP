class AddInformationToOrgans < ActiveRecord::Migration[6.0]
  def change
    add_column :organs, :disease, :string
    add_column :organs, :blood_group, :string
  end
end
