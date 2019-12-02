require 'pry'
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  binding.pry 

  result = {}
  column_index = 0 
  while column_index < nds.length do 
    #binding.pry 
    director_name = nds[column_index][:name]
    result[director_name] = gross_for_director(nds[column_index])
  column_index += 1   
  end 
  nil
  result 
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)

    director_movies = director_data[:movies]
    gross_total = 0 
    inner_index = 0 
    while inner_index < director_movies.length do 
      gross_total += director_movies[inner_index][:worldwide_gross]
    inner_index += 1   
    end 
  gross_total
end








