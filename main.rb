require_relative './create_person'
require_relative './create_book'
require_relative './list_books'
require_relative './list_people'
require_relative './create_rental'
require_relative './list_rental'
require 'json'

def menu(option, books, people, rentals)
  case option
  when '1'
    list = ListBooks.new
    list.list_books(books)
  when '2'
    list = ListPeople.new
    list.list_people(people)
  when '3'
    person = CreatePerson.new
    person.add(people)
  when '4'
    book = CreateBook.new
    book.add(books)
  when '5'
    rental = CreateRental.new
    rental.create_rental(books, people, rentals)
  when '6'
    rental = ListRental.new
    rental.list_rentals_per_id(rentals)
  when '7'
    File.write('./books.json', JSON.dump(books))
    File.write('./people.json', JSON.dump(people))
    File.write('./rentals.json', JSON.dump(rentals))
    puts 'Thank you for using this app!'
    puts ''
  else
    puts 'Choose a right number'
    puts ''
  end
end

def main
  begin
    books_file = File.read('./books.json')
    books = JSON.parse(books_file)
  rescue StandardError
    File.write('./books.json', JSON.dump([]))
    books_file = File.read('./books.json')
    books = JSON.parse(books_file)
  end

  begin
    people_file = File.read('./people.json')
    people = JSON.parse(people_file)
  rescue StandardError
    File.write('./people.json', JSON.dump([]))
    people_file = File.read('./people.json')
    people = JSON.parse(people_file)
  end

  begin
    rentals_file = File.read('./rentals.json')
    rentals = JSON.parse(rentals_file)
  rescue StandardError
    File.write('./rentals.json', JSON.dump([]))
    rentals_file = File.read('./rentals.json')
    rentals = JSON.parse(rentals_file)
  end
  option = ''

  while option != '7'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    option = gets.chomp
    menu(option, books, people, rentals)
  end
end

main
