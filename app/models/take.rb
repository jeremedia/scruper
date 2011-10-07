class Take < ActiveRecord::Base
  belongs_to :scene
  belongs_to :storyboard_cell
  belongs_to :sound_roll
  belongs_to :camera_roll
  has_many :screengrabs
  belongs_to :shooting_day
end
