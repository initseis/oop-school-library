require_relative "../book"

describe Book do
     context "when create a new book" do
          it "can access to its values" do
               book = Book.new("100 years", "Gabriel Garcia Marquez")
               expect(book.title).to eq("100 years")
               expect(book.author).to eq("Gabriel Garcia Marquez")
          end
     end
end