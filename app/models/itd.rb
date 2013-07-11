class Itd < ActiveRecord::Base
  
  attr_accessible :milliseconds
  validates_presence_of :milliseconds

end


