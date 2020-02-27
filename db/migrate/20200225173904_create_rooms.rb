class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :rules
      t.string :address
      t.string :images
      t.decimal :latitude
      t.decimal :longitude
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
