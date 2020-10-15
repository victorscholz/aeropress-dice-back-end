require_relative '../config/environment'
require 'pry'

Recipe.destroy_all

Recipe.create(dice: "Do not stir.")
binding.pry
puts "recipe created"