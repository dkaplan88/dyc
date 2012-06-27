class Event < ActiveRecord::Base
  attr_accessible :date, :full_lineup, :headliner, :image, :location, :tickets, :venue, :venue_website
end
