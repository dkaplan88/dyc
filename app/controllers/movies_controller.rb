require 'nokogiri'
require 'open-uri'

class MoviesController < ApplicationController
  respond_to :html, :json

  def index
    @city = request.location.city
    @city.blank? ? @city = "Chicago" : @city
    
    @doc = Mlb.all
    
  end

end