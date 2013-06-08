class Hydrant < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude, :name, :sid, :user_id

  geocoded_by :location
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude, :address => :location
  
  belongs_to :user
end
