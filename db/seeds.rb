hs = Shelter.create name: "Humane Society", address: "123 Main Street. Somewhere, USA"
hstwo = Shelter.create name: "Humane Society2", address: "124 Main Street. Somewhere, USA"
hsthree = Shelter.create name: "Humane Society3", address: "125 Main Street. Somewhere, USA"

bg = Adopter.create first_name: "Bill", last_name: "Gates"
bw = Adopter.create first_name: "Bill", last_name: "Walker"

joey = Pet.create name: "Joey", age: 6, species: "Dog", adopted?: true, shelter_id: hs.id, adopter_id: bg.id
jenny = Pet.create name: "Jenny", age: 4, species: "Dog", adopted?: false, shelter_id: hstwo.id, adopter_id: nil
banana = Pet.create name: "Banana", age: 9, species: "Cat", adopted?: true, shelter_id: hs.id, adopter_id: bw.id 