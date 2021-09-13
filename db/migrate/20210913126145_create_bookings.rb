class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_time
      t.date :end_time
      t.string :description
      t.integer :total_price
      t.references  :chef, foreign_key: true
      t.references  :user, foreign_key: true

      t.timestamps
    end
  end
end
