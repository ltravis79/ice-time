class Game < ActiveRecord::Base
  # Remember to create a migration!

  has_many :opponents
  has_many :teams, through: :opponents
end
