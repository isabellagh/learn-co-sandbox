flow 
- user start the app; 
- user sees/chooses between 21 best food trucks in Bmore or vegetarian.
- show list of the option chosen; 
- user can pick a food truck to know more about it.
- 

classes
- class relationships
-
- food_truck (know about the food trucks)
- scraper (get the data)
- cli (interact with the user)
- 

require 'nokogiri'
require 'open-uri'
site = "https://roaminghunger.com/food-trucks/md/baltimore/1/"

doc = Nokogiri::HTML(open(site))
food_type = doc.css(".row .col-sm-4, col-xs-6")
puts food_type.count
