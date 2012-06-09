class EventsController < ApplicationController
  before_filter :lastfm 
  respond_to :html, :json
  def index
    @ip = request.ip

    @city = request.location.city
    @city.blank? ? @city = "Chicago" : @city
    # if @city.blank?
    #   @city = "Chicago"
    # else
    #   @city
    # end
      
    # @lastfm = Lastfm.new("56d33663d228d59052676ff139ba3649", "803ad83bd5299a436c8c09b087a27d17")
       # @token = @lastfm.auth.get_token
       # @lastfm.session = @lastfm.auth.get_session(@token)['key']
    @events = @lastfm.geo.get_events(@city,0,5) 
    respond_with @events 
    
    # if params[:keyword].nil?
    #        @events 
    #      else
    #        @events = @events.each do |event|
    #          event.where("LOWER(event['artists']['artist']) LIKE ?", "%#{params[:keyword].downcase}%") && event.where("LOWER(event['venue']['name']) LIKE ?", "%#{params[:keyword].downcase}%")
    #        end
    #      end
    
    # @events= Events.paginate(page: params[:page])
    
    
    # respond_to do |format| 
    #      format.html 
    #      format.json {render json: @events}
    #    end
  end
  
end
