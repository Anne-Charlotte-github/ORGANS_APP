class CreateOrgans < ActiveRecord::Migration[6.0]
  def change
    create_table :organs do |t|
      t.string :type
      t.string :city
      t.string :condition
      t.float :price
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
