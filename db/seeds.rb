Person.destroy_all
Gift.destroy_all
mom = Person.create(name:"Mom")
alex = Person.create(name:"Alex")
melissa = Person.create(name:"Melissa")

Gift.create(name:"The Fault In Our Stars DVD", store: "Amazon", person_id:alex.id)
Gift.create(name:"Drawing is FUN", store:"Walmart", person_id: mom.id)
Gift.create(name:"Crockpot", store:"Best Buy", person_id: melissa.id)
