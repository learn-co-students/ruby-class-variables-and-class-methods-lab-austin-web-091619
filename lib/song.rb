class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.countMe (array)
    result = {}
    array.each do |var|
      if result.include?(var)
        result[var] += 1 
      else
        result[var] = 1
      end
    end
    result
  end

  def self.artist_count
    countMe(@@artists)

    # self.all.uniq do |song| song.artist end
  end

  def self.genre_count
    countMe(@@genres)
  end
  
end