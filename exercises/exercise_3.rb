require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"


@store3 = Store.find_by(id: 3)
Store.destroy_by(id: 3)
puts "There are #{Store.count} stores in the database"

# Load the third store (into @store3) as you did the other two before.
# Using Active Record's destroy method, delete the store from the database.
# Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)