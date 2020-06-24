class FoodTrucks::Scraper
  
  def self.scrape_trucks
    doc = Nokogiri::HTML(open("https://roaminghunger.com/food-trucks/md/baltimore/1/"))
  end 
  
end 