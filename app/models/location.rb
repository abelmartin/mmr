class Location < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :gmap_url, :coordinates
  before_save :set_coordinates, :set_gmap_url

  private

  def set_coordinates
    if coordinates.nil?
      locate_url = 'http://maps.googleapis.com/maps/api/geocode/json'
      locate_url += '?sensor=false'
      locate_url += "&address=#{address}"
      locate_data = HTTParty.get URI::encode(locate_url)
      if locate_data["results"].count > 0
        self.coordinates = locate_data["results"][0]["geometry"]["location"].
          map{|k,v| v}.join(', ')
      end
    end
  end

  def set_gmap_url
    self.gmap_url = "https://maps.google.com/maps?q=#{coordinates}"
  end
end
