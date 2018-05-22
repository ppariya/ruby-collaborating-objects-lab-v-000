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
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
      if self.find(name)
         self.find(name)
      else
        self.create(name)
      end

  end

  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end
end
