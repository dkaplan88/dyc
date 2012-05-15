class ArtistsController < ApplicationController
  before_filter :lastfm 
  respond_to :html, :json
  def index
    @artists = @lastfm.library.get_artists(10)
    respond_with @artists 
  end

  def show
    @artist = @lastfm.artist.get_info(params[:id])
    respond_with @artist
  end
end
