require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


@mens_store = Store.where(mens_apparel: true, womens_apparel: false)

@mens_store.each do |store|
  puts "Name: #{store.name} Annual Revenue: #{store.annual_revenue} "
end

@womens_store = Store.where('womens_apparel = true AND annual_revenue < 1000000')

@womens_store.each do |store|
  puts "Name: #{store.name} Annual Revenue: #{store.annual_revenue} "
end
# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.