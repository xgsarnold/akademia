# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Teacher.create(first_name: "Charles", last_name: "Xavier", birthdate: ("1940-7-13").to_date)
Teacher.create(first_name: "Irving", last_name: "Steel", birthdate: ("1980-1-15").to_date)
teacher = Teacher.create(first_name: "Geoffrey", last_name: "Arnold", birthdate: ("1988-10-15").to_date)

Student.create(first_name: "Scott", last_name: "Arnold", birthdate: ("1998-1-2").to_date)
Student.create(first_name: "Martin", last_name: "Smith", birthdate: ("1994-2-3").to_date)
Student.create(first_name: "Luke", last_name: "Adams", birthdate: ("1997-3-4").to_date)
Student.create(first_name: "Abraham", last_name: "Breedlove", birthdate: ("2000-4-5").to_date)
Student.create(first_name: "Joshua", last_name: "Johnson", birthdate: ("1999-5-6").to_date)
Student.create(first_name: "Joseph", last_name: "Matthews", birthdate: ("1999-5-6").to_date)
Student.create(first_name: "Joshua", last_name: "Jacobson", birthdate: ("2001-6-7").to_date)
Student.create(first_name: "Matthew", last_name: "Matthews", birthdate: ("1995-7-8").to_date)
Student.create(first_name: "Adam", last_name: "Barnard", birthdate: ("1996-8-9").to_date)
student = Student.create(first_name: "Thomas", last_name: "Moon", birthdate: ("1997-9-10").to_date)

teacher.users.create(email: "geoffrey.s.arnold@gmail.com", password: "iPrevail1105")
student.users.create(email: "scott.arnold@gmail.com", password: "iPrevail1105")

Course.create(course_name: "Philosophy", semester: "Fall", year: ("2016-9-10").to_date, teacher_id: 1)
Course.create(course_name: "Psychology", semester: "Spring", year: ("2017-1-10").to_date, teacher_id: 1)
Course.create(course_name: "Sociology", semester: "Fall", year: ("2016-9-10").to_date, teacher_id: 2)
Course.create(course_name: "Engineering", semester: "Spring", year: ("2017-1-10").to_date, teacher_id: 2)
Course.create(course_name: "Coding", semester: "Fall", year: ("2016-9-10").to_date, teacher_id: 3)
Course.create(course_name: "History", semester: "Spring", year: ("2017-1-10").to_date, teacher_id: 3)

CourseRegistration.create(student_id: 1, course_id: 1)
CourseRegistration.create(student_id: 1, course_id: 2)
CourseRegistration.create(student_id: 1, course_id: 3)

CourseRegistration.create(student_id: 2, course_id: 4)
CourseRegistration.create(student_id: 2, course_id: 5)
CourseRegistration.create(student_id: 2, course_id: 6)

CourseRegistration.create(student_id: 3, course_id: 1)
CourseRegistration.create(student_id: 3, course_id: 2)
CourseRegistration.create(student_id: 3, course_id: 3)

CourseRegistration.create(student_id: 4, course_id: 4)
CourseRegistration.create(student_id: 4, course_id: 5)
CourseRegistration.create(student_id: 4, course_id: 6)

CourseRegistration.create(student_id: 5, course_id: 1)
CourseRegistration.create(student_id: 5, course_id: 2)
CourseRegistration.create(student_id: 5, course_id: 3)

CourseRegistration.create(student_id: 6, course_id: 4)
CourseRegistration.create(student_id: 6, course_id: 5)
CourseRegistration.create(student_id: 6, course_id: 6)

CourseRegistration.create(student_id: 7, course_id: 1)
CourseRegistration.create(student_id: 7, course_id: 2)
CourseRegistration.create(student_id: 7, course_id: 3)

CourseRegistration.create(student_id: 8, course_id: 4)
CourseRegistration.create(student_id: 8, course_id: 5)
CourseRegistration.create(student_id: 8, course_id: 6)

CourseRegistration.create(student_id: 9, course_id: 1)
CourseRegistration.create(student_id: 9, course_id: 2)
CourseRegistration.create(student_id: 9, course_id: 3)

CourseRegistration.create(student_id: 10, course_id: 4)
CourseRegistration.create(student_id: 10, course_id: 5)
CourseRegistration.create(student_id: 10, course_id: 6)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 1)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 1)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 1)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 1)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 1)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 1)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 2)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 2)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 2)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 2)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 2)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 2)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 3)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 3)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 3)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 3)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 3)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 3)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 4)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 4)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 4)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 4)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 4)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 4)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 5)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 5)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 5)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 5)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 5)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 5)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 6)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 6)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 6)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 6)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 6)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 6)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 7)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 7)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 7)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 7)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 7)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 7)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 8)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 8)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 8)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 8)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 8)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 8)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 9)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 1, student_id: 9)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 9)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 2, student_id: 9)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 9)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 3, student_id: 9)

Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 10)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 4, student_id: 10)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 10)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 5, student_id: 10)
Assignment.create(assignment_name: "Paper 1", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 10)
Assignment.create(assignment_name: "Paper 2", grade: rand(0.5..1.0).to_d, weight: 0.5, assigned_at: Time.now.last_week, due_at: Time.now.next_week, course_id: 6, student_id: 10)
