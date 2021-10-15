require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'Length of student in a classroom' do
    it 'can check the length of student in students array' do
      student = Student.new(16, false, 'Rose')
      classroom = Classroom.new('Mathematics')
      classroom.add_student(student)
      expect(classroom.students.length).to eq(1)
    end
  end
end
