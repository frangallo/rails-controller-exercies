# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fran = User.create(username: "frangallo")
steve = User.create(username: "steveo")
bob = User.create(username: "bobbylight")

fran_contact = Contact.create(name: "fran", email: "fgmail", user_id:1)
steve_contact = Contact.create(name: "steve", email: "sgmail", user_id:2)
bob_contact = Contact.create(name: "bob", email: "bgmail", user_id:3)

ContactShare.create(contact_id: 1, user_id: 2)
ContactShare.create(contact_id: 3, user_id: 1)
