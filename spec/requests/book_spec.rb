require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "POST /books" do
    # Sunny Day: Create book with ALL attributes
    it "creates a new book with author, price, and date" do
      post books_path, params: { book: { 
        title: "The Hobbit", 
        author: "J.R.R. Tolkien", 
        price: 15.50, 
        published_date: "1937-09-21" 
      } }
      
      expect(response).to have_http_status(:found)
      follow_redirect!
      expect(response.body).to include("Book was successfully created.")
    end

    # Rainy Day: Fail if author is missing
    it "does not create a book without an author" do
      post books_path, params: { book: { title: "The Hobbit", author: "" } }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end