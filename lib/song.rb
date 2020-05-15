class Song
  @@count =0
  @@artists =[]
  @@genres =[]
  
  attr_accessor :name, :artist, :genre
  def initialize (name,artist,genre)
    @name =name
    @artist =artist
    @genre =genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genres=[]
    if !(genres.include?(@@genre))
      genres << @@genre
    end
  end
  
  def self.artists
     artists=[]
    if !(artists.include?(@artist))
      artists << @artist
    end
  end
  
  def self.genre_count
    hash=Hash.new(0)
    @@genres.each do |x|
      hash[x] +=1
    end
    hash
  end
  
   def self.artist_count
    hash=Hash.new(0)
    @@artists.each do |x|
      hash[x] +=1
    end
    hash
  end
  
end
