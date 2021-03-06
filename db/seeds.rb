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
Chatroom.destroy_all
Message.destroy_all

george = User.create!(first_name: "George", last_name: "Li", username: "K9Advantix", email: "george53@bu.edu", password: "hahacows")

holly = User.create!(first_name: "Holly", last_name: "Smith", username: "HSmith89", email: "holly@gmail.com", password: "hahacows")

steve = User.create!(first_name: "Steve", last_name: "Savini", username: "Savagini", email: "savini@gmail.com", password: "hahacows")

angelina = User.create!(first_name: "Angelina", last_name: "Jolie", username: "MrsSmith", email: "angelina@gmail.com", password: "hahacows")



project1 = Project.create(title: "YouPipe", description: "build an online video hosting website built on rails", owner_id: george.id, language: 'Rails', logo_url: 'rails-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project2 = Project.create(title: "Mobile Note Taking App", description: "Build an app that will allow users to take notes using their finger to write on their mobile devices. Should be built in Swift.", owner_id: angelina.id, language: 'Other', logo_url: 'other-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project3 = Project.create(title: "Meetup App", description: "Build an app that will help guitar hobbiests from around your area get in touch for a jam sesh!", owner_id: holly.id, language: 'Ruby', logo_url: 'ruby-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project4 = Project.create(title: "Cat Enthusiasts App", description: "Build an app that will help cat hobbiests from around your area get in touch for a cat playdate!", owner_id: steve.id, language: 'Ruby', logo_url: 'ruby-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project5 = Project.create(title: 'Postmark App', description: 'Build an app in rails that will email digital postcards to loved ones on holidays!', owner_id: george.id, language: 'Rails', logo_url: 'rails-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project6 = Project.create(title: 'Social Media Manager', description: 'Build an app in react that will go over all of your social media profiles and direct you to unprofessional pictures/videos/etc.', owner_id: holly.id, language: 'React', logo_url: 'react-logo-copy.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project7 = Project.create(title: 'DnD Campaign Tracker', description: 'Build an app in rails that will keep track of characters, npcs, and world states.', owner_id: steve.id, language: 'Rails', logo_url: 'rails-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project8 = Project.create(title: 'Budget Planner', description: 'Build an app that will keep track of monthly expenditures.', owner_id: angelina.id, language: 'Rails', logo_url: 'rails-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project9 = Project.create(title: 'Test Prep Tutor App', description: 'Build an app in rails that will outline specific lesson plans after a student takes a diagnostic test.', owner_id: george.id, language: 'Rails', logo_url: 'rails-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project10 = Project.create(title: 'Personal Pinboard', description: 'Build an app that will serve as a pinboard for users to post stickies, images, links, etc.', owner_id: holly.id, language: "Ruby", logo_url: 'ruby-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project11 = Project.create(title: 'NBA Fantasy App', description: 'Build an app with react on rails that will serve as a fantasy basketball app.', owner_id: steve.id, language: 'Rails', logo_url: 'rails-logo.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project12 = Project.create(title: 'Gaming Friend Finder', description: 'Build an app in react that will find players of video games based on 10 questions you will answer when you make your account.', owner_id: angelina.id, language: 'React', logo_url: 'react-logo-copy.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

project13 = Project.create(title: 'Objective News Aggregator', description: 'Build an app that will show headlines from various sources of news from different political leanings.', owner_id: george.id, language: 'React', logo_url: 'react-logo-copy.png', street: '10 Greylock Rd.', city: 'Allston', state: 'MA')

Chatroom.create(topic: project1.title, slug: project1.id)
Chatroom.create(topic: project2.title, slug: project2.id)
Chatroom.create(topic: project3.title, slug: project3.id)
Chatroom.create(topic: project4.title, slug: project4.id)
Chatroom.create(topic: project5.title, slug: project5.id)
Chatroom.create(topic: project6.title, slug: project6.id)
Chatroom.create(topic: project7.title, slug: project7.id)
Chatroom.create(topic: project8.title, slug: project8.id)
Chatroom.create(topic: project9.title, slug: project9.id)
Chatroom.create(topic: project10.title, slug: project10.id)
Chatroom.create(topic: project11.title, slug: project11.id)
Chatroom.create(topic: project12.title, slug: project12.id)
Chatroom.create(topic: project13.title, slug: project13.id)

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
