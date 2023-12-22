require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
#Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
#On the next line, also output the average annual revenue for all stores.
@total_revenue = Store.sum(:annual_revenue)
@avg_revenue = Store.average(:annual_revenue)
puts "Total revenue: #{@total_revenue}"
puts "Average revenue: #{@avg_revenue.round}"
#Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
million_store = Store.where("annual_revenue > ?", [1000000]).count
puts "#{million_store} stores have over 1 million dollars in revenue."
