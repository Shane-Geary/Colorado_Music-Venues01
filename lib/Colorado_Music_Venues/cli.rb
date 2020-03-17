class ColoradoMusicVenues::CLI

    @@white="\e[0m"
    @@cyn="\e[1;36m"

    def call 
        puts "#{@@cyn}Welcome to Colorado Music Venues!#{@@white}"
        get_venues
        list_venues
        get_user_venue
        goodbye
    end 

    def get_venues
        @venue = ColoradoMusicVenues::Venue.all
    end

    def list_venues
        @venue.each.with_index(1) do |venue, index|
            puts "#{index}. #{venue.name}" 
        end 
        puts "Choose a venue number to see more info."
        case get_user_venue
        when get_user_venue != valid_input
            puts "Not sure what you want, enter the venues number for more info."
        when get_user_venue = "exit"
            goodbye
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
            puts "type list to go back to the venues or type exit."
            case get_user_venue
            when get_user_venue = "list"
            list_venues
        end 
    end 

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0 
    end 

    def goodbye
        if get_user_venue == "exit"
            puts "See you at the next big show!"
            end 
        end 
    end 
end  