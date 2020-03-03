class ColoradoMusicVenues::Info

    attr_accessor :name, :venue
    @@all = [] 

    def initialize(name, venue)
        @name = name 
        @venue = venue
        add_to_venue 
        save
    end 

    def self.all 
        @@all 
    end 

    def add_to_venue
        @venue.info << self unless @venue.info.include?(self)
    end 

    def save 
        @@all << self 
    end 
end 