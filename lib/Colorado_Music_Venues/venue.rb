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
        #@@all.select {|v| v.index(1, 9)}
        @@all
    end 

    def get_info 
        ColoradoMusicVenues::Scraper.info_scraper(self) if @info.empty? 
    end 

    def save 
        @@all << self 
    end 
end 