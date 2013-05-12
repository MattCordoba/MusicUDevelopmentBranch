class Song < ActiveRecord::Base
  attr_accessible :artist_id, :lyric, :name, :image
  belongs_to :artist
  mount_uploader :image, ImageUploader
  has_many :pictures
  
end
