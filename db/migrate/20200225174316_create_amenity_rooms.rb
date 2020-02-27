class CreateAmenityRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :amenity_rooms do |t|
      t.references :room, foreign_key: true
      t.references :amenity, foreign_key: true

      t.timestamps
    end
  end
end
