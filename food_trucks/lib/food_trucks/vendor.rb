class FoodTrucks::Vendor
  
  attr_accessor :name #contact, address
  @@all = []
  
  def initialize(name, vendor)
    @name = name
    @vendor = vendor
    save
  end 
 
  def self.all
    @@all
  end 
 
  def save
    @@all << self
  end 
  
end 