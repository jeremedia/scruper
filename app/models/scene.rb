class Scene < ActiveRecord::Base
  belongs_to :script
  has_many :takes
  has_many :storyboard_cells
end
