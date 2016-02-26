class Opponent < ActiveRecord::Base
  # Remember to create a migration!

  has_many :teams
  belongs_to :game
  
end
