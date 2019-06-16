class Realestate::CLI
    def sell
        puts "Welcome, here's the available property for sale:"
        available_properties
        properties_forsale
        exit
    end

    def available_properties
        
        av = Realestate::PropertyScrape.getProperties
        av.each_with_index do |h, i|
            puts "#{i+1} -> #{h[:h_add]}"
        end
    end

    def properties_forsale
        input = nil
        while input != "E"
            puts "Select North LA Properties: "
            input = gets.strip.upcase

            av = Realestate::PropertyScrape.getProperties
            av.each_with_index do |h, i|

                case input 
                
                when "#{i+1}"
                    puts "#{h[:h_add]}"
                    puts "-------------------------------"
                    puts "PROPERTY DETAILS: #{h[:h_spec]}"
                    puts "-------------"
                    puts "PROPERTY PRICE: #{h[:h_price]}"
                when "0"
                    sell
                end

            end
        end
    end

    def exit
        puts "Good Bye and Welcome to SoCal!"
    end

end