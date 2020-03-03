class ColoradoMusicVenues::CLI
    def call 
        puts "Welcome to Colorado Music Venues!"
        get_venues
        list_venues
        get_user_venue
    end 

    def get_venues
        @venue = ColoradoMusicVenues::Scraper.all
    end

    def list_venues
        puts "Choose a venue to see more info."
        @venue.each.with_index(1) do |index, venue|
            puts "#{index}. #{venue.name}"
        end 
    end 

    def get_user_venue
        chosen_venue = gets.strip.to_i
        display_venues_for(chosen_venue) if valid_input(chosen_venue, @venue)
    end 

    def display_venues_for(chosen_venue)
        venue = @venue[chosen_venue - 1]
        venue.get_info 
        puts "Here is some info on #{venue.name}."
        venue.info.each do |info|
            puts "#{info}"
        end 
    end 

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0 
    end 
end  