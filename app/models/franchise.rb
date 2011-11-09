class Franchise < ActiveRecord::Base
  #attr_accessor :Name, :Season
  validates :name, :presence => true
  validates :season, :presence => true

  has_many :scheduled_games, :dependent => :destroy
  has_many :players, :dependent => :destroy
  accepts_nested_attributes_for :scheduled_games, :players
  
  TEAMS = ["Anaheim", "Boston", "Buffalo", "Calgary", "Carolina", "Chicago", "Columbus", "Colorado", "Dallas", 
    "Detroit", "Edmonton", "Florida", "Los Angeles", "Minnesota", "Montreal", "Nashville", "New Jersey", 
    "New York (I)", "New York (R)", "Ottawa", "Phoenix", "Philadelphia", "Pittsburgh", "San Jose",
     "St. Louis", "Tampa Bay", "Toronto", "Vancouver", "Washington", "Winnipeg" ]
end
