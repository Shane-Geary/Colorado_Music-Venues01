class ColoradoMusicVenues::CLI

    @@white="\e[0m"
    @@cyn="\e[1;36m"

    def call 
        puts "#{@@cyn}Welcome to Colorado Music Venues!#{@@white}"
        get_venues
        list_venues
        get_user_venue
        menu 
    end 

    def get_venues
        @venue = ColoradoMusicVenues::Venue.all
    end

    def list_venues
        @venue.each.with_index(1) do |venue, index|
            puts "#{index}. #{venue.name}" 
        end 
        puts "#{@@cyn}Choose a venue number to see more info.#{@@white}"
    end 

    def get_user_venue
        chosen_venue = gets.strip.to_i 
        display_venues_for(chosen_venue) if valid_input(chosen_venue, @venue) 
    end 

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0 
    end 

    def display_venues_for(chosen_venue) 
        venue = @venue[chosen_venue - 1] 
        venue.get_info
        puts "#{@@cyn}Here is some info on #{venue.name}...#{@@white}"
        venue.info.each do |info|
            puts "#{info}"
            puts "#{@@cyn}type list to go back to the venues or type exit.#{@@white}"
            end 
        end 

    def menu 
        user_input = gets.strip.to_s 
        case user_input
        when user_input == "list"
        list_venues 
        when user_input == false 
            puts "#{@@cyn}Not sure what you want, enter the venues number for more info.#{@@white}"
            list_venues
        when user_input == "exit"
            puts "#{@@cyn}See you at the next big show!#{@@white}"
        end 
    end 
end 