class Song

attr_accessor :name
  
@@all = []

  def initialize(name)
  @name = name
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
   self.class.all << self
  end
  
  def self.create(song)
    song = song.new
    song.save
    song
end