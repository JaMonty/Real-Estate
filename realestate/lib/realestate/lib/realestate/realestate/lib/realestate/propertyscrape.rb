require 'nokogiri'
require 'httparty'
require 'pry'

class Realestate::PropertyScrape

    def self.getProperties
        site = 'https://www.theagencyre.com/luxury-real-estate/'

        @gethouse = Nokogiri::HTML(HTTParty.get(site))

        #binding.pry



        house = @gethouse.css("ul.keyvalset")
       
        ta = []
        house.each { |h|
            h_spec = h.css("li.keyval.beds-baths").text.gsub(/[[:space:]]/, '') #.text.split.join(" ")
            h_add = h.css("li.keyval.adr").text.split.join(" ")
            h_price = h.css("li.keyval.price").text.split.join(" ")

            # ta << [h_spec, h_add, h_price] # DEMO


            if h_spec == ""
                @gethouse.xpath('//text()').find_all{|r| r.to_s.strip == ''}.map(&:remove)
            else 
                ta << {h_spec: h_spec, h_add: h_add, h_price: h_price}
            end

        }
        ta
    end

end