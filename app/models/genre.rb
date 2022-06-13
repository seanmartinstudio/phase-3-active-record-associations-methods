class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.song.count
  end

  def artist_count
    self.artists.total
  end

  def all_artist_names
    self.artists.map do |artist|
      artist.name
    end
end
