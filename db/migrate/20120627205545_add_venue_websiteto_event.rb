class AddVenueWebsitetoEvent < ActiveRecord::Migration
  def change
    add_column :events, :venue_website, :string
  end
end
