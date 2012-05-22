require 'geocoder'

class DealsController < ApplicationController 
  respond_to :html, :json
  
  def index
      @groupon = JSON.parse(open("http://api.groupon.com/v2/deals/?client_id=e385c4c455aa4265466bb322453f053d066577e1&?division_id=chicago").read)
  end
  
end