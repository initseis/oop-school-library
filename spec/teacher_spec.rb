require_relative '../teacher'

describe Teacher do
  context 'Create a new Teacher' do
    it 'can access to its values and return unknown for empty name' do
      teacher = Teacher.new('tech', 35)
      expect(teacher.specialization).to eq('tech')
      expect(teacher.name).to eq('Unknown')
      expect(teacher.age).to eq(35)
      expect(teacher.can_use_services?).to eq(true)
    end
  end
end
