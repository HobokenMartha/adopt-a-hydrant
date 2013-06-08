# == Schema Information
#
# Table name: hydrants
#
#  id         :integer          not null, primary key
#  sid        :string(255)
#  name       :string(255)
#  location   :string(255)
#  latitude   :float
#  longitude  :float
#  user_id    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hydrant < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude, :name, :sid, :user_id

  before_validation :generate_sid

  geocoded_by :location
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude, :address => :location

  belongs_to :user

  protected
  def generate_sid
    self.sid = ('0'..'9').to_a.shuffle.first(10).join
  end
end
