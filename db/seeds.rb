# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mom = Person.create(name:"Mom")
alex = Person.create(name:"Alex")
melissa = Person.create(name:"Melissa")

Gift.create(name:"The Fault In Our Stars DVD", store: "Amazon", person_id:alex.id)
Gift.create(name:"Drawing is FUN", store:"Walmart", person_id: mom.id)
Gift.create(name:"Crockpot", store:"Best Buy", person_id: melissa.id)
