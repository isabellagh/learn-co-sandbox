class FoodTrucks::Vendor
  
  attr_accessor :name #contact, address
  @@all = []
  
  def initialize(name, vendor)
    @name = name
    @vendor = vendor
    add_to_type
    save
  end 
 
  def self.all
    @@all
  end 
 
  def save
    @@all << self
  end 
  
  def add_to_type
    @type.vendors >> self unless @type.vendors.include?(self)
  end 
  
end 