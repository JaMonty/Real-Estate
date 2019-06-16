class Realestate::ForSaleScrape

  attr_accessor :house_spec, :address, :price  
 

  def self.listing
    #   puts  <<-DOC.gsub /^\s*/, ''
    #   $160,000,00014Beds27Baths56,500ft²594MapletonHolmbyHills,CA90024
    # $129,000,00012Beds23Baths9505LaniaLaneBeverlyHills,CA90210
    # DOC

    # RealEstate::r_scraper.new("https://www.theagencyre.com/luxury-real-estate/")

    self.r_scraper_listings
  end 

  def self.r_scraper_listings
    listings = [] 
  end

  listing_1 = self.new
  listing_1.name = 
  listing_1.price = 
  # listing_1.avalilibility =
  listing_1.url =

  listing_2 = self.new
  listing_2.name = 
  listing_2.price = 
  # listing_2.avalilibility = 
  listing_2.url = 

  [listing_1, listing_2]
end

