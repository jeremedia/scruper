class Role < ActiveRecord::Base
  has_many :people, :through=>:crew_members
  has_many :crew_members
end
