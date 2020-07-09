require "pry"

class FoodTrucks::Scraper
  
  def self.scrape_trucks
    doc = Nokogiri::HTML(open("https://roaminghunger.com/food-trucks/md/baltimore/1/"))
    
    food_type = doc.css(".savory, .sweet, .vegetarian")
    
    food_type.each do |ft|
      name = ft.text
      FoodTrucks::Truck.new(name)
    end 
  end 
  
  def self.scrape_vendors(vendor)
    site = "https://roaminghunger.com/food-trucks/md/baltimore/#{vendor.name}"

    doc = Nokogiri::HTML(open(site))
    vendor_type = doc.css("div.square_truck")
      puts vendor_type.count

    vendor_type.each do |vt|
      puts vt.css("h4").text
    end 
  end 
end