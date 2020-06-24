
class FoodTrucks::Truck 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end 
  
  def self.all
    FoodTrucks::Scraper.scrape_trucks if @@all.empty?
    @@all
  end 
  
  def save
    @@all << self
  end 
  
end 