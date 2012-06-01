require 'open-uri'
require 'json'
require 'geocoder'

class DealsController < ApplicationController 
  respond_to :html, :json
  
  def index
    @groupon = JSON.parse(open("http://api.groupon.com/v2/deals/?client_id=bb3edcb7d8bff6a45944f1cd9fa31fbae9c1c1c8&?division_id=chicago").read)
  end
  
end