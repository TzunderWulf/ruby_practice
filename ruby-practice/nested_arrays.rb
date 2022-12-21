teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes.each_with_index do |row, row_index|
    puts "Row #{row_index} = #{row}"
end

vehicles = {
    alice: {year: 2020, make: "Toyata", model: "Corolla"}
}

vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}

vehicles.select! { |name, data| data[:year] > 2020}

puts vehicles