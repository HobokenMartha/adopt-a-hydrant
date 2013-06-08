class Checkin < ActiveRecord::Base
  attr_accessible :hydrant_id, :user_id

  validates :hydrant_id, :user_id, presence: :true
end
