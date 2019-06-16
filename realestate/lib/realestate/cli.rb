class Realestate::CLI

    def call
        welcome
        #run
        #list_realestate
    end

    def welcome
        puts "\n\nHello Homebuyer!\n\n"
    end

    # puts "I am here"
    def run
        self.welcome.listing_titles
        loop do 
            home_listings
        end
    end

    

    def list_realestate
        puts "todays residence listings:" 
        #         puts <<-DOC.gsub /^\s*/, ''
        # $160,000,00014Beds27Baths56,500ft²594MapletonHolmbyHills,CA90024
        # $129,000,00012Beds23Baths9505LaniaLaneBeverlyHills,CA90210
        #         DOC
        @Realestate::realestate.today 
        # @realestate = Realestate::realestate
        @Realestate.each.with_index(1) do |realestate, i|
        puts '#{1}. #{listing.adress} - #{listing.price} - #{listing.specs}'
    end


    def menu 
        input = nil
        while input != "exit"
            puts "enter the number you want to see type 1"
            puts "would you like to see current listings"
        end
        input = gets.strip.downcase
        return input
    end

=begin      
        if input .to_i > 0
            puts @realestate[input .to_-1]
        elsif input == "listings"
            puts '#{listing.name} - #{listing.price} - #{listing.availabillity} - #{listing.url}'
            list listings
        else
            puts 'type exit for listing'
        end
        
        case input 
        when "1"
            puts "more info on home 1"
        when "2"
            puts "more info on home 2"
        end
    end
=end

end