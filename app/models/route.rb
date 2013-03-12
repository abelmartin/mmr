class Route < ActiveRecord::Base
  belongs_to :trip
  attr_accessible :end_location, :gmail_url, :start_location
end
