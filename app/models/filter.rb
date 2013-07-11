class Filter < ActiveRecord::Base
  attr_accessible :azimuth, :elevation, :coefficients, :ear

  validates_presence_of :azimuth, :elevation, :ear

  has_and_belongs_to_many :users
end
