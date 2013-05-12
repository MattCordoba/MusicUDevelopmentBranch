class SongsController < ApplicationController
  def index
    @artists = Artist.all
    @songs = @artists.songs
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
  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new    
  end
  def create
    
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(params[:song])
    if @song.save
      redirect_to @artist, :notice => "Successfully created artist."
    else
      render :action => 'new'
    end
  end
  def destroy
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    if @song.destroy
      redirect_to artist_path(@artist), :notice => "Song Succesfully Deleted"
    end
  end
end
