class ListRental
  def list_rentals_per_id(rentals)
    print 'ID of person: '
    id = gets.chomp
    puts 'Rentals:'
    rentals.each do |r|
      next unless r['id_person'] == id.to_i

      puts "Date: #{r['date']}, Book \"#{r['book']}\" by #{r['author']}"
    end
    puts ''
  end
end
