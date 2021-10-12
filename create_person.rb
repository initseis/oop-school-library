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
      people_temp = Student.new(age.to_i, permission, name)
      person = { 'json_class' => 'Student', 'age' => people_temp.age, 'permission' => people_temp.can_use_services?,
                 'name' => people_temp.name, 'id' => people_temp.id }
      people.push(person)
      puts 'Person created successfully'
      puts ''
    when '2'
      teacher_temp = Teacher.new(specialization, age.to_i, name)
      teacher = { 'json_class' => 'Teacher', 'age' => teacher_temp.age, 'specialization' => teacher_temp.specialization,
                  'permission' => teacher_temp.can_use_services?, 'name' => teacher_temp.name, 'id' => teacher_temp.id }
      people.push(teacher)
      puts 'Person created successfully'
      puts ''
    end
  end
end
