require_relative './Classroom'
require_relative './Student'
require_relative './person'
require_relative './book'
require_relative './rental'

class1 = Classroom.new('math')
class2 = Classroom.new('science')
student1 = Student.new(25, false, 'kevin')
student2 = Student.new(22, false, 'lucia')
student3 = Student.new(17, false, 'mirta')
puts class1.students.length
student1.classroom = class1
class1.add_student(student2)
puts class1.students.length
puts class2.students.length
class2.add_student(student3)
puts class2.students.length
class1.students.each do |student|
  puts student.name
end
puts student1.classroom.label
puts student3.classroom.label
puts '##########################'

person1 = Person.new(25, false, 'Sevinchek')
book1 = Book.new('100 años de soledad', 'Gabriel García Marquez')
rental1 = Rental.new('04-26-2021', person1, book1)
rental2 = Rental.new('06-01-2020', person1, book1)
puts person1.rentals[0].date
puts book1.rentals[1].date
book1.rentals.each do |rental|
  puts rental.date
end
puts rental1.person.name
puts rental2.book.title
book2 = Book.new('La ciudad y los perros', 'Mario Vargas Llosa')
book2.add_rental('01-05-2021', person1)
puts book2.rentals[0].date
puts book2.rentals[0].person.name
