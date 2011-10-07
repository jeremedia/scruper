class Production < ActiveRecord::Base
  has_one :script
  has_many :crew_members
  has_one :shoot
  has_many :shooting_days, :through=>:shoot
  has_many :takes, :through=>:shooting_days
  
  #belongs_to :agency
  #has_many :comments
  
end
