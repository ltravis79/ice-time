class Division < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :league
  has_many :seasons
  
end
