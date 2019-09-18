class Song
 
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
   
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count +=1
      @@genres << genre
      @@artists << artist
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

    def self.genre_count
        genre_histo = {}
        @@genres.uniq.each do |genre|
            genre_histo[genre] = 0
        end
        @@genres.each do |genre|
            genre_histo[genre]+=1
        end
        genre_histo
    end

    def self.artist_count
        artist_histo = {}
        @@artists.uniq.each do |artist|
            artist_histo[artist] = 0
        end
        @@artists.each do |artist|
            artist_histo[artist]+=1
        end
        artist_histo
    end

    
end