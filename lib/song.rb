class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    newsong = self.new(song)
    newsong.artist_name = artist
  end
end
