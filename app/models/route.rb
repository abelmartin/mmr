class Route < ActiveRecord::Base
  belongs_to :user, inverse_of: :routes
  belongs_to :start_location,
    class_name: 'Location',
    foreign_key: :start_location_id,
    inverse_of: :route
  belongs_to :end_location,
    class_name: 'Location',
    foreign_key: :end_location_id,
    inverse_of: :route
  attr_accessible :end_location, :gmail_url, :start_location
end
