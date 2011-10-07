class StoryboardCell < ActiveRecord::Base
  belongs_to :storyboard
  belongs_to :scene
end
