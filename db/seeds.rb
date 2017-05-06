# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Project.destroy_all
Assignment.destroy_all

george = User.create!(first_name: "George", last_name: "Li", username: "K9Advantix", email: "george53@bu.edu", password: "hahacows")

holly = User.create!(first_name: "Holly", last_name: "Smith", username: "HSmith89", email: "holly@gmail.com", password: "hahacows")

steve = User.create!(first_name: "Steve", last_name: "Savini", username: "Savagini", email: "savini@gmail.com", password: "hahacows")

angelina = User.create!(first_name: "Angelina", last_name: "Jolie", username: "MrsSmith", email: "angelina@gmail.com", password: "hahacows")



project1 = Project.create(title: "Calendar App for Masseurs", description: "Build an app that will help our masseurs on track! Should be built with React on Rails", owner_id: george.id)

project2 = Project.create(title: "Mobile Note Taking App", description: "Build an app that will allow users to take notes using their finger to write on their mobile devices. Should be built in Swift", owner_id: angelina.id)

project3 = Project.create(title: "Meetup App for Guitar Enthusiasts", description: "Build an app that will help guitar hobbiests from around your area get in touch for a jam sesh!", owner_id: holly.id)

project4 = Project.create(title: "Meetup App for Cat Enthusiasts", description: "Build an app that will help cat hobbiests from around your area get in touch for a cat playdate!", owner_id: steve.id)


Assignment.create(project: project1, user: holly)
Assignment.create(project: project1, user: steve)
Assignment.create(project: project1, user: george)

Assignment.create(project: project2, user: angelina)
Assignment.create(project: project2, user: holly)
Assignment.create(project: project2, user: george)

Assignment.create(project: project3, user: steve)
Assignment.create(project: project3, user: holly)
Assignment.create(project: project3, user: angelina)

Assignment.create(project: project4, user: george)
Assignment.create(project: project4, user: steve)
Assignment.create(project: project4, user: angelina)
