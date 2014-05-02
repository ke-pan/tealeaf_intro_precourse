# exercise of precourse

# 1
puts "----- Exercise 1 -----"

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |el| puts el }

# 2
puts "----- Exercise 2 -----"

arr.each { |el| puts el if el > 5 }

# 3
puts "----- Exercise 3 -----"

new_arr = arr.select { |el| el.odd? }
p new_arr

# 4
puts "----- Exercise 4 -----"

arr.unshift 0
arr.push 11
p arr

# 5
puts "----- Exercise 5 -----"

arr.pop
arr.push 3
p arr

# 6
puts "----- Exercise 6 -----"

arr.uniq!
p arr

# 7
puts "----- Exercise 7 -----"

puts "Access elements of Array by index, while access elements of Hash by key."

# 8
puts "----- Exercise 8 -----"

h1 = {:name => "Ke Pan", :location => "Shanghai"}
h2 = {name: "Ke Pan", location: "Shanghai"}
p h1, h2

# 9
puts "----- Exercise 9 -----"

h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5
p h

h.delete_if { |_, v| v < 3.5 }
p h

#10 
puts "----- Exercise 10 -----"

puts "Hash values can be Array"
h = {:a => ['this', 'is', 'Array']}
p h

puts "This is an array of hashes"
a = [{:a => 1}, {:a => 2}]
p a

# 11
puts "----- Exercise 11 -----"

puts "http://api.rubyonrails.org/"

# 12 
puts "----- Exercise 12 -----"
contact_data = 
  [
    ["joe@email.com", "123 Main st.", "555-123-4567"],
    ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
  ]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email]   = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone]   = contact_data[0][2]
contacts["Sally Johnson"][:email]   = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone]   = contact_data[1][2]

p contacts

# 13
puts "----- Exercise 13 -----"

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# 14
puts "----- Exercise 14 -----"

new_contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
keys = [:email, :address, :phone]

new_contacts.each do |k, _v; a|
  a = contact_data.shift
  keys.each do |key|
    new_contacts[k][key] = a.shift
  end
end

p new_contacts

# 15
puts "----- Exercise 15 -----"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |el| el.start_with?('s') }
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |el| el.start_with?('s', 'w') }
p arr

# 16
puts "----- Exercise 16 -----"

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

p a.map { |el| el.split }.flatten


# 17
puts "----- Exercise 17 -----"

puts "These hashes are the same!"