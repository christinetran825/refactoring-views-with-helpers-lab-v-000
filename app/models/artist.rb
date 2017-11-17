class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name=(artist_name)
    artist_name.each do |artist_name|
      artist = Artist.find_or_create_by(artist_name)
      self.artists << artist
  end
end
