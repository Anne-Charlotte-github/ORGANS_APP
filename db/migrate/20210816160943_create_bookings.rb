class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :organ, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: { to_table: :users }
      t.date :renting_at
      t.float :rating

      t.timestamps
    end
  end
end
