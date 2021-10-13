require_relative '../student'

describe Student do
  context 'when create a new student' do
    it 'can access to its values' do
      student = Student.new(16, false, 'Rose')
      expect(student.name).to eq('Rose')
      expect(student.age).to eq(16)
      expect(student.can_use_services?).to eq(false)
      expect(student.play_hooky).to eq("¯\\(\ツ)/¯")
    end
  end
end
