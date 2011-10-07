class CameraRoll < ActiveRecord::Base
  has_many :takes
  belongs_to :shooting_day
end
