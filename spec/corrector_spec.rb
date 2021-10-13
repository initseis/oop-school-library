require_relative '../corrector'

describe Corrector do
  context 'Capitalize and return 10 string characters' do
    it 'capitalize and return first 10 string characters' do
      corrector = Corrector.new
      expect(corrector.correct_name('hIPPOpotamuS')).to eq('Hippopotam')
    end
  end
end
