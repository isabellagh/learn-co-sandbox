class FoodTrucks::CLI 
  
  def call 
    puts "\nWelcome to Baltimore Food Trucks!\n"
    puts ""
    get_food_types
    truck_types
    get_user_choice
  end 
  
  def get_food_types 
    #to be scraped
    @types = ["21 Prefered", "Vegetarian"]
  end 
  
  def truck_types
    puts "What type of Food Truck would you like to see, 1 or 2?"
    @types.each.with_index(1) { |type,index|
      puts "#{index}- #{type}"
    }
  end 
  
  def get_user_choice
    chosen_types = gets.strip.to_i
    show_trucks_for(chosen_types) if valid_input(chosen_types, @types)
    
  end 
  
  def valid_input(input, data)
    input.to_i <= data.lenght && input.to_i > 0 
  end 
  
end 