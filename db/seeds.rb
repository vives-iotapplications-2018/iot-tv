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

for i in 0..3
    Device.create(dev_eui: "00E4F052209EE8A" + i.to_s, Location: Location.find(i + 1))
end

temperature_list = [
  [ "5,2", "C", 1 ],
  [ "5", "C", 2 ],
  [ "4,5", "C", 3 ],
  [ "4,2", "C", 4 ],
  [ "4.2", "C", 5 ],
  [ "4", "C", 6 ],
  [ "4.3", "C", 7 ],
  [ "5.2", "C", 8 ],
  [ "6.3", "C", 9 ],
  [ "8.9", "C", 10 ],
  [ "9.6", "C", 11 ],
  [ "11.7", "C", 12 ],
  [ "13.5", "C", 13],
  [ "15", "C", 14 ],
  [ "16", "C", 15 ],
  [ "16.2", "C", 16 ],
  [ "16.1", "C", 17 ],
  [ "16", "C", 18 ],
  [ "15.5", "C", 19 ],
  [ "13.2", "C", 20 ],
  [ "13.1", "C", 21 ],
  [ "12.9", "C", 22 ],
  [ "13.0", "C", 23 ],
  [ "12.9", "C", 24 ]
]

temperature_list.each do |value, unit, index|
    time = "2018-11-23T" + index.to_s + ":00:11.562Z"
    Temperature.create( value: value, created_at: time, unit: unit, Device: Device.find(1) )
end
