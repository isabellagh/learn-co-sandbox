require "pry"
require "lolize/auto"

class FoodTrucks::CLI 
  
  def call 
    puts "Welcome to Baltimore best Food Trucks!"
      puts ""
      puts "|^^^^^^^^^|     |^^^^^^^^^|     |^^^^^^^^^^|"
      puts "|1.Savory |__   | 2.Sweet |__   | 3.Veggie |__"
      puts "|_,,_,,__,,,.|  |_,,_,,__,,,.|  |_,,_,,__,,,_.|"
      puts "``@  @    @     ``@  @    @     ``@  @    @"
      puts ""
    get_food_types
    truck_types
    get_user_choice
    another_type?
  end 
  
  def get_food_types 
    @types = FoodTrucks::Truck.all
  end 
  
  def truck_types
    puts "What type of Food Truck would you like to see: 1, 2 or 3?"
    puts ""
    @types.each.with_index(1) { |type, index|
      puts "#{index}- #{type.name}"
    }
  end 
  
  def get_user_choice
    puts ""
    chosen_type = gets.strip.to_i
    if valid_input(chosen_type, @types) 
      show_vendors_for(chosen_type) 
    else
      puts ""
      truck_types
      get_user_choice
    end 
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  
  def show_vendors_for(chosen_type)
    type = @types[chosen_type -1]
    puts "Here are the 21 Best #{type.name} Food Trucks in Baltimore!"
    type.get_vendors
    
    type.vendors.each{ |vendor|
      puts "#{vendor.name}"
    }
  end
  
  def another_type?
    while true
      puts "Would you like to see another food type, yes or no?"
    case gets.strip.downcase
      when "yes"
        truck_types
        get_user_choice
      when "no"
        puts "Thanks for stoping by!"
        exit 
      else
        another_type?
      end 
    end 
  end 
end 