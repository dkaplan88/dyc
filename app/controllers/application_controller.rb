class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def lastfm
    @lastfm = Lastfm.new("56d33663d228d59052676ff139ba3649", "803ad83bd5299a436c8c09b087a27d17")
  end

  def groupon
    @groupon = JSON.parse(open("http://api.groupon.com/v2/deals/?client_id=e385c4c455aa4265466bb322453f053d066577e1&?division_id=chicago").read)
  end
end
