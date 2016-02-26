class Season < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :division
  has_many :teams
  
end
