class Storyboard < ActiveRecord::Base
  belongs_to :script
  has_many :cells, :class_name=>"StoryboardCell"
end
