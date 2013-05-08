class SongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = Song.all
  end
  def show
    @artist = Artist.find(params[:artist_id])
    @song = Song.find(params[:id])
  end
  def edit
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
  end
  def update
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to @artist, :notice  => "Successfully updated Song!"
    else
      render :action => 'edit'
    end
  end
end