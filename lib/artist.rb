class Artist

attr_accessor :name

@@all = []

def initialize(artist_name)
  @name = artist_name
  #@songs = []
  @@all << self
end

def songs
  #@songs
  @@all
end

def add_song(song)
  @@all << song
  #@songs << songs
  song.artist = self
end

def add_song_by_name(name)
  song = Song.new(name)
  #@songs << song
  @@all << song
  song.artist = self
end

def self.song_count
Song.all.count
end




end
