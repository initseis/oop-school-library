class CreateRental
  def create_rental(books, people, rentals)
    puts 'Select a book from the following list by number (not id)'
    books.each.with_index do |b, index|
      puts "#{index}) Title: #{b['title']}, Author: #{b['author']}"
    end
    book_index = gets.chomp
    puts ''
    puts 'Select a person from the following list by number (not id)'
    people.each.with_index do |p, index|
      if p['specialization']
        puts "#{index}) [Teacher] Name: #{p['name']}, ID: #{p['id']}, Age: #{p['age']}"
      else
        puts "#{index}) [Student] Name: #{p['name']}, ID: #{p['id']}, Age: #{p['age']}"
      end
    end
    person_index = gets.chomp
    print 'Date: '
    date = gets.chomp
    Rental.new(date, people[person_index.to_i], books[book_index.to_i])
    rental = { 'date' => date, 'book' => books[book_index.to_i]['title'], 'author' => books[book_index.to_i]['author'],
               'id_person' => people[person_index.to_i]['id'] }
    rentals.push(rental)
    puts ''
    puts "Date: #{date}"
    puts 'Rental created successfully'
    puts ''
  end
end
