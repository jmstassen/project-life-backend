# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
Task.destroy_all

scheduling = Project.create(title: "Scheduling")
home = Project.create(title: "Home")
routines = Project.create(title: "Routines")

Task.create(name: "Dentist", date: "2021-09-20", size: 3, status: "waiting", project_id: routines.id)
Task.create(name: "Vaccume", date: "2021-08-29", size: 5, status: "active", project_id: home.id)