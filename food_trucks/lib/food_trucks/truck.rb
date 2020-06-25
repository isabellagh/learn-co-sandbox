require "pry"

class FoodTrucks::Truck 
  
  attr_accessor :name, :vendors
  
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
  
  def get_vendors
    FoodTrucks::Scraper.scrape_vendors(self) if @vendors.empty?
  end 
  
  def save
    @@all << self
  end 
  
end 