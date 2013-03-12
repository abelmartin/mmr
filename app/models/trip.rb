class Trip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :trip_date
end
