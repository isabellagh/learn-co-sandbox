require_relative "./food_trucks/version"
require_relative "./food_trucks/cli"
require_relative "./food_trucks/truck"
require_relative "./food_trucks/scraper"

require 'nokogiri'
require 'open-uri'


module FoodTrucks
  class Error < StandardError; end
  # Your code goes here...
end
