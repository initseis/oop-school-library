class ListBooks
  def list_books(books)
    books.each do |b|
      puts "Title: #{b.title}, Author: #{b.author}"
    end
    puts ''
  end
end
