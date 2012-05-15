class UsersController < ApplicationController
  before_filter :lastfm 
  respond_to :html, :json
  def show
    @user = @lastfm.user.get_top_artists(params[:id])
    respond_with @user
  end
end
