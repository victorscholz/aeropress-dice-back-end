require_relative '../config/environment'
require 'pry'

User.destroy_all
Recipe.destroy_all

User.create(name: 'Victor')
puts 'user created'

binding.pry