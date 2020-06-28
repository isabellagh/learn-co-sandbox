require "pry"

 class FoodTrucks::CLI 
  
  def call 
    puts "Welcome to Baltimore Food Trucks!"
    puts ""
    get_food_types
    truck_types
    get_user_choice
  end 
  
  def get_food_types 
    @type = FoodTrucks::Truck.all
  end 
  
  def truck_types
    puts "What type of Food Truck would you like to see, 1, 2 or 3?"
    @type.each.with_index(1) { |type, index|
      puts "#{index}- #{type.name}"
    }
  end 
  
  def get_user_choice
    puts ""
    chosen_type = gets.strip.to_i
    if valid_input(chosen_type, @type) 
      show_trucks_for(chosen_type) 
    else
      puts ""
      call
    end 
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  
  def show_trucks_for(chosen_type)
    type = @type[chosen_type -1]
    type.get_vendors
      puts ""
      puts "Here are the trucks for #{type.name}!"
      #binding.pry
    type.vendors.each.with_index do |vendor|
      puts "#{vendor.name}"
      puts ""
      puts "|^^^^^^^^|            |^^^^^^^^|"
      puts "|  BMORE |__          |  BMORE |__"
      puts "|_,,_,,__,,,|         |_,,_,,__,,,|"
      puts "``@  @    @           ``@  @    @"""
      puts ""
    end 
  end 
end 