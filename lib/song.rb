class Song
attr_accessor :name, :artist, :genre, :artist_count


@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}

def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@artist_count ||= {}

    @@artists << artist
    @@genres << genre

    if @@genre_count[genre]
    @@genre_count[genre] += 1
    else
        @@genre_count[genre] = 1
    end

    

    if @@artist_count[artist]
        @@artist_count[artist] += 1
    else
        @@artist_count[artist] = 1
    end
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
  @@genre_count
end

def self.artist_count
    @@artist_count
end

def artist_count
    @artist_count
end
end