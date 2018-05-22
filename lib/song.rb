class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name)
    file = song.split(' - ')
    file[0].artist.name
    file[1].name
  end
end
