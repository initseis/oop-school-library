require_relative './book'

class CreateBook
  def add(books)
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book_temp = Book.new(title, author)
    book = {"title" => book_temp.title, "author" => book_temp.author}
    books.push(book)
    puts 'Book created successfully'
    puts ''
  end
end
