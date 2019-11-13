class Song 
  attr_accessor :name, :genre
  @@all_songs = []
  
  def initialize(name, genre)
    @name = name 
    @genre = genre
    @@all_songs << self
  end
end