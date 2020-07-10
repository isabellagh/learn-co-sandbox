require "pry"

class FoodTrucks::Vendor
  
  attr_accessor :name, :truck #info
  @@all = []
  
  def initialize(name, type)
    @name = name
    @types = types
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
    @types.vendors << self unless @types.vendors.include?(self)
  end 
  
end   