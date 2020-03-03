class ColoradoMusicVenues::Venue 

    attr_accessor :name, :info 
    @@all = [] 

    def initialize(name)
        @name = name 
        @info = [] 
        save 
    end 

    def self.all
        ColoradoMusicVenues::Scraper.venue_scraper if @@all.empty?
        @@all 
    end 

    def info 
        ColoradoMusicVenues::Scraper.info_scraper(self) if @info.empty?
        @info 
    end 

    def save 
        @@all << self 
    end 
end 