class Location < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :latitude, :longitude
end
