class League < ActiveRecord::Base
  # Remember to create a migration!

  has_many :divisions
  
end
