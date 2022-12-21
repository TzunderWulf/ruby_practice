
# similair objects in js, arrays in arrays
my_hash = {
    "a random word" => "ahoy",
    "an array" => [1,2,3],
    "an empty hash in a hash" => [],
}

my_hash["an array"] = [4,3,2,1]
my_hash["boots"] = "epik"

my_hash.delete("an array")

american_cars = {
    chevrolet: "Corvette",
    :ford => "Mustang"
}

# puts american_cars[:chevrolet]

fwends = ["person", "persoon", "brian"]
shouting  = []

fwends.reject! { |fwend| fwend == "brian"}
fwends.each{ |fwend| shouting.push(fwend.upcase)}

# bang methods !
fwends.map! { |fwend| fwend.upcase}

numbers = [5, 6, 7, 8]
sum = 0

#nums.each { |num| sum += num}

my_numbers = [21, 42, 303, 499, 550, 811]
puts my_numbers.all? { |number| puts number > 500}