require_relative './student'
require_relative './teacher'

class CreatePerson
  def add(people)
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    type = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    if type == '2'
      print 'Specialization: '
      specialization = gets.chomp
    else
      print 'Has parent permission? [Y/N]: '
      permission = gets.chomp
      permission = permission.downcase == 'y'
    end
    case type
    when '1'
      people.push(Student.new(age, permission, name))
      puts 'Person created successfully'
      puts ''
    when '2'
      people.push(Teacher.new(specialization, age, name))
      puts 'Person created successfully'
      puts ''
    end
  end
end
