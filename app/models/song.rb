class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  # def song_artist_name
  #   Artist.find(self.artist_id).name
  # end
end
