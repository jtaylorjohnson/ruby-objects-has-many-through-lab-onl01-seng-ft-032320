class Genre 
  attr_accessor :genre, :song 
  
  @@all = []
  
  def initialize(genre)
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, artist)
    Song.new(name, artist, self)
  end
  
  def songs 
    Songs.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    songs.map do |song|
      song.artist 
    end
  end
      
end