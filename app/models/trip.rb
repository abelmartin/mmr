class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :routes
  attr_accessible :trip_date
end
