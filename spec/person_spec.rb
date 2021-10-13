require_relative "../person"

describe Person do
     context "when create a new person" do
          it "can access to its values" do
               person = Person.new(25, true, "Kevin")
               expect(person.name).to eq("Kevin")
               expect(person.age).to eq(25)
               expect(person.can_use_services?).to eq(true)
          end
     end
end