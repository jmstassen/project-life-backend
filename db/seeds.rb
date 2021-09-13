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
appointments = Project.create(title: "Appointments")
admin = Project.create(title: "Admin")
goals = Project.create(title: "Goals")

Task.create(name: "Dentist - 4/4 (w)", date: "2021-08-30", size: 2, status: "waiting", project_id: appointments.id)
Task.create(name: "Vet - 12/10", date: "2021-08-30", size: 2, status: "active", project_id: appointments.id)
Task.create(name: "Water heater", date: "2021-08-30", size: 13, status: "waiting", project_id: home.id)
Task.create(name: "Storm door", date: "2021-08-30", size: 8, status: "active", project_id: home.id)
Task.create(name: "Career coach (d)", date: "2021-08-30", size: 3, status: "done", project_id: scheduling.id)
Task.create(name: "December vacation", date: "2021-08-30", size: 8, status: "active", project_id: scheduling.id)
Task.create(name: "Oil change (dn)", date: "2021-08-30", size: 3, status: "do now", project_id: scheduling.id)
Task.create(name: "Pay toll ticket", date: "2021-08-30", size: 3, status: "waiting", project_id: admin.id)
Task.create(name: "Pay phone bill", date: "2021-08-30", size: 3, status: "do now", project_id: admin.id)
Task.create(name: "Meditate", date: "2021-08-30", size: 1, status: "active", project_id: goals.id)
Task.create(name: "No soda", date: "2021-08-30", size: 1, status: "active", project_id: goals.id)
Task.create(name: "Jog", date: "2021-08-30", size: 1, status: "active", project_id: goals.id)
Task.create(name: "Coding", date: "2021-08-30", size: 1, status: "active", project_id: goals.id)