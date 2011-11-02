class Player < ActiveRecord::Base
   belongs_to :franchise
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :position, :presence => true
  validates :first_game, :presence => true
  validates :last_game, :presence => true
  POSITIONS = ["Defenseman", "Forward", "Goalie"]
end
