class Script < ActiveRecord::Base
  has_many :scenes
  belongs_to :production
  has_one :storyboard
end
