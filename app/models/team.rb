class Team < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :season
  has_many :team_members
  has_many :players, through: :team_members
  has_many :opponents
  has_many :games, through: :opponents
end
