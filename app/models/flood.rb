class Flood < ActiveRecord::Base
  has_many :pools
  has_many :sources
end
