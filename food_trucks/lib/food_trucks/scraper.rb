class FoodTrucks::Scraper
  
  def self.scrape_trucks
    doc = Nokogiri::HTML(open("https://roaminghunger.com/food-trucks/md/baltimore/1/"))
    
    food_type = doc.css(".savory, .sweet, .vegetarian")
    
    food_type.each do |ft|
      name = ft.text
      FoodTrucks::Truck.new(name)
    end 
  end 
  
  def self.scrape_vendors(type)
    FoodTrucks::Vendor.new("truck info 1", type)
    FoodTrucks::Vendor.new("truck info 2", type)
    FoodTrucks::Vendor.new("truck info 3", type)
  end 
  
end 