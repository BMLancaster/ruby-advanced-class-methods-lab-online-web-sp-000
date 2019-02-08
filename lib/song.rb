class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  Song.create_from_filename
  song = self.new
  song.artist_name = (name.split(" - ")[0])
  song.name = (name.split(" - ")[1].chomp(".mp3"))
  @@all << song 
  song
  end

  
  Song.destroy_all
  end

end
