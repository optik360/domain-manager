# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d1 = Domain.create({name:"www.google.ca",server: "google",cms: "HTML", due_date:"2016-12-25",last_known_state_1: "up", server_name: "test"})
d2 = Domain.create({name:"www.optik360.com",server: "Dexter",cms: "HTML", due_date:"2016-12-25",last_known_state_1: "up", server_name: "test"})
d3= Domain.create({name:"www.test.ca",server: "127.0.0.1",cms: "WordPress 4.1", due_date:"2019-12-25",last_known_state_1: "up",last_known_state_2: "need plugin update",comment: "recent", server_name: "test"})
