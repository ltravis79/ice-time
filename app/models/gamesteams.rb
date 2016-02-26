class Gamesteams < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :game
  has_many :teams
  
end
