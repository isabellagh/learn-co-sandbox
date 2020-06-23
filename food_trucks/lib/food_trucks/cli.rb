class FoodTrucks::CLI 
  
  def call 
    puts "Welcome to Baltimore Food Trucks"
    get_food_types
    get_user_food_type
    #food_type(prefered, vegetarian)
    #list_prefered
    #list_vegetarian
    
  end 
  
  def get_food_types 
    #to be scraped
    @types = ["prefered", "savory", "sweet", "vegetarian"]
  end 
  
  def get_user_food_type
    #get user types 
    @types.each_with_index { |type,index|
      puts "#{index + 1}- #{type}"
    }
    
  end 
  
end 