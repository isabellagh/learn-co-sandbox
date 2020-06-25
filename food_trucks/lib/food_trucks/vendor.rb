class FoodTruck::Vendor
  attr_accessor :name #contact, address
  
  @@all = []
  
  def initialize(name)
    @name = name
    @vendors = []
    save
  end 
 
  def save
    @@all << self
  end 
  
  
end 