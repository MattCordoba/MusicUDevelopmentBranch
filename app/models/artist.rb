class Artist < ActiveRecord::Base
  attr_accessible :name
  has_many :songs
  attr_accessible :songs
  accepts_nested_attributes_for :songs
end
