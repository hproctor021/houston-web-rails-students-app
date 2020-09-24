# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Instructor.destroy_all
Student.destroy_all

Instructor.create(name: "Mr. A")
Instructor.create(name: "Mrs. B")
Instructor.create(name: "Mr. C")
Instructor.create(name: "Miss. D")
Instructor.create(name: "Mr. E")
Instructor.create(name: "Ms. F")

Student.create(name: "Arnie", major: "Bio Med", age: 23, instructor_id: 1)
Student.create(name: "Bernie", major: "Hospitality", age: 25, instructor_id: 3)
Student.create(name: "Annie", major: "Computer Science", age: 19, instructor_id: 2)
Student.create(name: "Mannie", major: "Dentistry", age: 27, instructor_id: 4)
Student.create(name: "Bananie", major: "Dance", age: 45, instructor_id: 5)
Student.create(name: "Lanie", major: "Chemistry", age: 34, instructor_id: 6)

