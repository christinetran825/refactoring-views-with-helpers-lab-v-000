module ArtistsHelper
  def display_artist(song)
    if song.artist != nil
      # link_to song.artist.name, song.artist
      link_to @song, artist_path(@artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
