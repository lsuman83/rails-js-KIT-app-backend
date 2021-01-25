# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first

family_member1 = user.people.find_or_create_by(first_name: "Bob", last_name: "Dylan", relationship: "brother", birthday: "January 23, 2004",
                            address: "1234 N. Hwy 200, Orlando, FL 34471", avatar_url: "https://tse4.mm.bing.net/th?id=OIP.GslTgQPuIwjafVpYBfGstAHaDt&pid=Api&P=0&w=368&h=185" )

bobby_notes = user.notes.find_or_create_by(content: "we met", person_id: family_member1.id)