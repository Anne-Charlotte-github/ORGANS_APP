class ChangeTypeToOrgans < ActiveRecord::Migration[6.0]
  def change
    rename_column :organs, :type, :organ_type
  end
end
