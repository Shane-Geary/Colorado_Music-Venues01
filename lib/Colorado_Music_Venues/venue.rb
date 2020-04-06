class ColoradoMusicVenues::Venue 

    attr_accessor :name, :info, :url 
    @@all = []

    def initialize(name, url)
        @name = name 
        @url = url  
        save 
    end 

    def self.all 
        ColoradoMusicVenues::Scraper.venue_scraper if @@all.empty?
        @@all[0..21]
    end 

    def get_info  
        ColoradoMusicVenues::Scraper.info_scraper(self) if !@info 
    end 

    def save 
        @@all << self 
    end 
end 