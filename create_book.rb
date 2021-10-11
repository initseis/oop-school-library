require_relative './book'

class CreateBook
  def add(books)
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    books.push(Book.new(title, author))
    puts 'Book created successfully'
    puts ''
  end
end
