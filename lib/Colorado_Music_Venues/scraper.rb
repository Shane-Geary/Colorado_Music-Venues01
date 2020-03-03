class ColoradoMusicVenues::Scraper  

    def self.venue_scraper
        page = Nokogiri::HTML(open("https://www.uncovercolorado.com/concerts/")

        venues_1 = page.css("strong"[1])
        venues_2 = page.css("strong"[9])
        end 
    end 

    def self.info_scraper
        ColoradoMusicVenues::Info.new
        ColoradoMusicVenues::Info.new
    end 
end 

ColoradoMusicVenues::Scraper.venue_scraper 

