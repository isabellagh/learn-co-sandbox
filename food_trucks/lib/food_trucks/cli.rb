require "pry"
require "lolize/auto"

class FoodTrucks::CLI 
  
  def call 
    puts "\nWelcome to Baltimore best Food Trucks!"
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
    puts "What kind of Food Truck would you like to see: 1, 2 or 3?\n"
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
    puts "\nHere are the 21 Best #{type.name} Food Trucks in Baltimore!\n"
    type.get_vendors
    
    type.vendors.each{ |vendor|
      puts "#{vendor.name}"
    }
  end
  
  def another_type?
    puts "\nWould you like to see another kind of food? Please type yes or no.\n"
    input = gets.strip.downcase
      if input == "yes"
        puts "Please type 1, 2, or 3."
        get_user_choice
        another_type?
      elsif input == "no"
        puts "\t\tThanks for stoping by!"
      else
        another_type?
     
    end 
  end 
end 