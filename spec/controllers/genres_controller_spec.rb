require "rails_helper"
describe GenresController do
  describe "#show" do
    it "filters all books by given genre" do
      horror = create(:genre)
      books = build_stubbed(:book)
      allow(Book).to receive(:by_genre).and_return(books)

      get :show, id: horror

      expect(Book).to have_received(:by_genre).with(horror)
      expect(response).to render_template("books/index")
      expect(response).to be_success
    end
  end
end
