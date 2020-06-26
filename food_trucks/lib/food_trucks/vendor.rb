require "pry"

class FoodTrucks::Vendor
  
   attr_accessor :name, :truck #info
  @@all = []
  
  def initialize(name, type)
    @name = name
    @type = type
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
    @type.vendors << self unless @type.vendors.include?(self)
  end 
  
end  