class ListRental
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
end
