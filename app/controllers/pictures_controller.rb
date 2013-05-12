class PicturesController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @song = Song.find(params[:song_id])
    @pictures = @song.pictures.all
  end
end
