User.delete_all
Move.delete_all
Belonging.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_xavier = User.create({ first_name: "Xavier", last_name: "Stewart", email: "XOStewart@gmail.com", password: "abcd1234", password_confirmation: "abcd1234" })
move_to_la = Move.create ({ name: "Move to LA", start_address: "1028 New York Avenue", start_city: "Brooklyn", start_state: "NY", start_zip: "11203", target_address: "9044 Santa Monica Blvd.", target_city: "Santa Monica", target_state: "CA", target_zip: "90048", description: "Move to LA before the end of the year.", move_out_date: "2014-03-17", move_in_date: "2014-04-16", target_budget: "5000"})
living_room_television = Belonging.create({ name: "LG 60in. Flatscreen TV", kind_of: "Flatscreen TV", picture_url: "http://rooftopfilms.com/rent_LG_FlatScreen.html", current_room: "Living Room", target_room: "Den", condition: "Excellent"})

xavier.moves << move_to_la
move_to_la.belongings << living_room_television
