class Song < ActiveRecord::Base
  attr_accessible :artist_id, :lyric, :name
  belongs_to :artist
end
