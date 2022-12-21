i = 0

# normal loop
def normal_loop(i)
    loop do
        puts "i is #{i}"
        i += 1
        break if i == 10
    end
end

# continues till condition is true
def while_loop(i)
    # as long as i is smaller than 10
    while i < 10 do
        puts "i is #{i}"
        i += 1
    end
end

def while_loop_desired
    while gets.chomp != "games" do
        puts "Why no games"
    end
end

# continues as long as condition is false
def until_loop(i)
    # as long as i is not bigger than 10
    until i >= 10 do
        puts "i is #{i}"
        i += 1
    end
end 

# times loop
5.times do puts "Hello World!" end