module ArtistsHelper
  def display_artist(artist)
    if artist != nil
      link_to artist_path(artist)
    else
      link_to artist_path, "Add Artist"
    end
  end
end
