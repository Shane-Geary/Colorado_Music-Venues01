class ColoradoMusicVenues::CLI

    @@white="\e[0m"
    @@cyn="\e[1;36m"

    def call 
        puts "#{@@cyn}Welcome to Colorado Music Venues!#{@@white}"
        get_venues
        list_venues
        get_user_venue
        display_venues_for
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
        user_input = gets.strip
        case user_input
        when user_input == "exit"
        goodbye 
        else 
            puts "Not sure what you want, enter the venues number for more info."
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
            case user_input
            when user_input = "list"
            list_venues 
        end 
    end 

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0 
    end 

    def goodbye
        #if user_input == "exit"
            puts "See you at the next big show!"
        end 
    end 
end  