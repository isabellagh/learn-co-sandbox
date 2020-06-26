require_relative "./food_trucks/version"
require_relative "./food_trucks/cli"
require_relative "./food_trucks/truck"
require_relative "./food_trucks/scraper"
require_relative "./food_trucks/vendor"

#require 'HTTParty'
require 'nokogiri'
require 'open-uri'
require 'pry'

module FoodTrucks
  class Error < StandardError; end
  # Your code goes here...
end
