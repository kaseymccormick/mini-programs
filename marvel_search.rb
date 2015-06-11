#requiring the marvelite gem
require 'marvelite'

#starting a new instance of marvelite api client - passing through the keys
client = Marvelite::API::Client.new( :public_key => '9fac4a16fafcec4c9f7241cc098b80d9', :private_key => '4ddf9e77e650f8d88b5e8c54db4bb4751f38a8a0')

#gathering the person's name
puts "Hello there, what is your name?"
user = gets.chomp.capitalize

#gathering the character's name
puts "What MARVEL character would you like to search for?"
character = gets.chomp

#empty origin array
origin = []

#an array of results created with narrowing down the hash's arrays 
results_array = client.characters(:name => character).data.fetch("results")

#go through the results array for each item push the description to the origin array
results_array.each {|origin| origin.push(name.fetch("description")) }

#tell the user by name the character by name and origin (description) from marvel
puts "#{user}, is #{character}'s origin #{origin}?"
answer = gets.chomp.downcase.to_s
# finish interaction with the user
if answer == "yes"
  puts "Great Scott, it worked!"
else
  puts "Error, Will Robinson"
end