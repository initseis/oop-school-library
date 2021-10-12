class ListPeople
  def list_people(people)
    people.each do |p|
      if p['specialization']
        puts "[teacher] Name: #{p['name']}, ID: #{p['id']}, Age: #{p['age']}"
      else
        puts "[student] Name: #{p['name']}, ID: #{p['id']}, Age: #{p['age']}"
      end
    end
    puts ''
  end
end
