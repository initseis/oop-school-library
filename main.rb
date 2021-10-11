require_relative './classroom'
require_relative './student'
require_relative './teacher'
require_relative './person'
require_relative './book'
require_relative './rental'

def menu
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  gets.chomp
end

def create_person(people)
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

def create_book(books)
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  books.push(Book.new(title, author))
  puts 'Book created successfully'
  puts ''
end

def list_books(books)
  books.each do |b|
    puts "Title: #{b.title}, Author: #{b.author}"
  end
  puts ''
end

def list_people(people)
  people.each do |p|
    if p.instance_of?(Student)
      puts "[Student] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
    else
      puts "[Teacher] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
    end
  end
  puts ''
end

def create_rental(books, people)
  puts 'Select a book from the following list by number (not id)'
  books.each.with_index do |b, index|
    puts "#{index}) Title: #{b.title}, Author: #{b.author}"
  end
  book_index = gets.chomp
  puts ''
  puts 'Select a person from the following list by number (not id)'
  people.each.with_index do |p, index|
    if p.instance_of?(Student)
      puts "#{index}) [Student] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
    else
      puts "#{index}) [Teacher] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
    end
  end
  person_index = gets.chomp
  print 'Date: '
  date = gets.chomp
  Rental.new(date, people[person_index.to_i], books[book_index.to_i])
  puts ''
  puts "Date: #{date}"
  puts 'Rental created successfully'
  puts ''
end

def list_rentals_per_id(people)
  print 'ID of person: '
  id = gets.chomp
  puts 'Rentals:'
  people.each do |p|
    next unless p.id == id.to_i

    p.rentals.each do |r|
      puts "Date: #{r.date}, Book \"#{r.book.title}\" by #{r.book.author}"
    end
  end
  puts ''
end

def main
  books = []
  people = []
  option = true
  while option
    case menu
    when '1'
      list_books(books)
    when '2'
      list_people(people)
    when '3'
      create_person(people)
    when '4'
      create_book(books)
    when '5'
      create_rental(books, people)
    when '6'
      list_rentals_per_id(people)
    when '7'
      puts 'Thank you for using this app!'
      puts ''
      option = false
    else
      puts 'Choose a right number'
      puts ''
    end
  end
end

main
