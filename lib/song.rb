class Song
  attr_accessor :name, :artist

  def self.new_by_filename(file_name)
    song = self.new
    song.name = file_name.split(" - ")[1]

  end
end
