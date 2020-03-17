class ColoradoMusicVenues::Scraper  

    def self.venue_scraper
        page = Nokogiri::HTML(open("https://www.uncovercolorado.com/concerts/"))

        page.css("td").each do |element|
            name = element.css("strong").text 
            ColoradoMusicVenues::Venue.new(name)
        end 
    end 

    def self.info_scraper
        page = Nokogiri::HTML(open("https://www.uncovercolorado.com/concerts/"))

        #page.css("td").each do |element|
            element.css()
        #end
    end 
end 

#ColoradoMusicVenues::Scraper.venue_scraper 

