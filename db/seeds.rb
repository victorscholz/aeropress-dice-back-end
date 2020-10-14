require_relative '../config/environment'
require 'pry'

Recipe.destroy_all

Recipe.create(dice: "Don't stir.")
binding.pry
puts "recipe created"