class Song
    @@count = 0
    @@genres = [] 
    @@artists = [] 

    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre

        @@count += 1 
        @@genres << genre 
        @@artists << artist
    end 

    def self.count
        @@count
    end 

    def self.genres 
        @@genres.uniq
    end 

    def self.artists
        @@artists.uniq 
    end 

    def self.genre_count
        gCount = {}
        @@genres.each do |genre|
            if gCount.key?(genre)
                gCount[genre] += 1
            else
                gCount[genre] = 1
            end 
        end 
        gCount
    end 

    def self.artist_count
        aCount = {}
        @@artists.each do |artist|
            if aCount.key?(artist)
                aCount[artist] += 1
            else
                aCount[artist] = 1
            end 
        end 
        aCount
    end 
end 