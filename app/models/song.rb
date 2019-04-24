class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  # def song_artist_name
  #   Artist.find(self.artist_id).name
  # end
  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def genre_name
    self.try(:genre).try(:name)
  end

  def genre_name=(genre)

  end
end
