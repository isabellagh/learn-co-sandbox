require "pry"
require "lolize/auto"

 class FoodTrucks::CLI 
  
  def call 
    puts "Welcome to Baltimore Food Trucks!"
    puts ""
    get_food_types
    truck_types
    get_user_choice
  end 
  
  def get_food_types 
    @types = FoodTrucks::Truck.all
  end 
  
  def truck_types
    puts "What type of Food Truck would you like to see, 1, 2 or 3?"
    @types.each.with_index(1) { |type, index|
      puts "#{index}- #{type.name}"
    }
  end 
  
  def get_user_choice
    puts ""
    chosen_type = gets.strip.to_i
    if valid_input(chosen_type, @types) 
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
    type = @types[chosen_type -1]
    type.get_vendors
      puts ""
      puts "Here are the trucks for #{type.name}!"
      #binding.pry
    #type.vendors.each.with_index do |vendor, index|
      #puts "#{index}- #{vendor.name}"
    case chosen_type
    when 1
      puts ""
      puts "|^^^^^^^^|            |^^^^^^^^|"
      puts "| Savory |__          | Savory |__"
      puts "|_,,_,,__,,,|         |_,,_,,__,,,|"
      puts "``@  @    @           ``@  @    @"
      puts ""
    when 2 
      puts ""
      puts "|^^^^^^^^|            |^^^^^^^^|"
      puts "|  Sweet |__          |  Sweet |__"
      puts "|_,,_,,__,,,|         |_,,_,,__,,,|"
      puts "``@  @    @           ``@  @    @"
      puts ""
    when 3 
      puts ""
      puts "|^^^^^^^^|            |^^^^^^^^|"
      puts "| Veggie |__          | Veggie |__"
      puts "|_,,_,,__,,,|         |_,,_,,__,,,|"
      puts "``@  @    @           ``@  @    @"
      puts ""
    end 
  end 
end 