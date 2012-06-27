module EventsHelper
  
  def artist_lineup(artists)
    artists.each do |artist|
      link_to artist, artist_url(artist)
    end
  end
  
end
