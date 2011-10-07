class Shoot < ActiveRecord::Base
  belongs_to :production
  has_many :shooting_days
end
