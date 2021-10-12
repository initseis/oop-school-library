class ListPeople
  def list_people(people)
    people.each do |p|
      puts "[#{p.class}] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
    end
    puts ''
  end
end
