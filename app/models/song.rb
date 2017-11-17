class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  end

  def artist_name=(name)
    artist_name.each do |name|
      artist = Artist.find_or_create_by(name)
      self.artists << artist
  end
end
