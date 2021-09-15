class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :first_name
      t.string :last_name
      t.string :speciality
      t.integer :price
      t.integer :rating
      t.string :location
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
