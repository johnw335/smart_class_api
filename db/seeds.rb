require 'faker'

20.times{Student.create!(email: Faker::Internet.email,
                        password: "password")}

dummy_teacher = Teacher.create(email: "test@teacher.com",
              password: "password")

dummy_class = Classname.create!(teacher: dummy_teacher,
              name: "StartupSystems")

10.times {Attendance.create!(student: Student.all.sample,
                              classname: dummy_class)}
Student.create!(email:"test@cornell.edu", password:"password")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
