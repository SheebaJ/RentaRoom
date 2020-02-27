class Room < ApplicationRecord
  has_many :amenity_rooms
  has_many :amenity, through: :amenity_rooms

  belongs_to :city
  belongs_to :user
 
end
