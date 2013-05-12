class Picture < ActiveRecord::Base
  attr_accessible :integer, :name
  belongs_to :song
end
