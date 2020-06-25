class FoodTrucks::Truck 
  
  attr_accessor :name
  attr_writer :vendors
  
  @@all = []
  
  def initialize(name)
    @name = name
    @vendors = []
    save
  end 
  
  def self.all
    FoodTrucks::Scraper.scrape_trucks if @@all.empty?
    @@all
  end 
  
  def save
    @@all << self
  end 
  
  def vendors
    FoodTrucks::Scraper.scrape_vendors(self) if @vendors.empty?
    @vendors
  end 
end 