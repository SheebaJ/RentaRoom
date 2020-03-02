class Room < ApplicationRecord
  has_many :amenity_rooms
  has_many :amenity, through: :amenity_rooms

  belongs_to :city
  belongs_to :user
  after_create :coord

  mount_uploader :images, AvatarUploader
  private
  def coord
    
    response=HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{self.address}&key=#{ENV.fetch('API_KEY')}")
    # for(int i=0;i<response.length();i++)
    #   {
    #      JSONObject location = response.getJSONObject(i).getJSONObject("geometry").getJSONObject("location");;
    #      String lat  = location.optString("lat");
    #      String lng  = location.optString("lng");
    #   }
    self.update_attributes(latitude:response.parsed_response["results"][0]["geometry"]["location"]["lat"].to_f)
    self.update_attributes(longitude:response.parsed_response["results"][0]["geometry"]["location"]["lng"].to_f)
  end
end