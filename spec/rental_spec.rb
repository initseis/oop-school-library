require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe Rental do
  context 'Check for book rentals' do
    it 'can access the values of person renting the book' do
      person = Person.new(25, true, 'Kevin')
      book = Book.new('100 years', 'Gabriel Garcia Marquez')
      rental = Rental.new('2020-10-10', person, book)
      expect(rental.date).to eq('2020-10-10')
      expect(rental.person.name).to eq('Kevin')
      expect(rental.book.title).to eq('100 years')
    end
  end
end
