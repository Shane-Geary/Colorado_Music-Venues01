class ColoradoMusicVenues::Scraper  

    def self.venue_scraper
        page = Nokogiri::HTML(open("https://www.uncovercolorado.com/concerts/"))

        page.css("td").each do |element|
            name = element.css("strong").text 
            url = element.css("a").attr("href").value
            ColoradoMusicVenues::Venue.new(name, url)
        end 
    end 

    def self.info_scraper(venue)
        page = Nokogiri::HTML(open(venue.url)) 
        
        page.css("div").each do |element|
            name = element.css("p").first 
        end
    end 
end 

#page.css("div.entry-content") 
#ColoradoMusicVenues::Scraper.venue_scraper 

