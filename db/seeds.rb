# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

location_list = [
  [ "Afrika", "Hier is het warm" ],
  [ "Amerika", "Hier woont Trump" ],
  [ "Himalaya", "Hoog en droog EN KOUD!" ],
  [ "Woestijn", "Hier is het heel warm" ]
]

location_list.each do |name, description|
  Location.create( name: name, description: description )
end

for i in 0..4
    Device.create(dev_eui: "" + i.to_s, Location: Location.find(i + 1))
end

temperature_list = [
  [ "30.2", "C", 1 ],
  [ "68", "F", 2 ],
  [ "-10", "C", 3 ],
  [ "40", "C", 4 ]
]

temperature_list.each do |value, unit, device|
    Temperature.create( value: value, unit: unit, Device: Device.find(device) )
end