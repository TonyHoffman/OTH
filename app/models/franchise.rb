class Franchise < ActiveRecord::Base
  #attr_accessor :Name, :Season
  validates :name, :presence => true
  validates :season, :presence => true
end
