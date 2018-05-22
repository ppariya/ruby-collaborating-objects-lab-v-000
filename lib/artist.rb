class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def save
    @@all << name
  end
end
