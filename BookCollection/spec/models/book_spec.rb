require 'rails_helper'

RSpec.describe Book, type: :model do
  # Sunny Day: Valid with all attributes
  it "is valid with valid attributes" do
    book = Book.new(title: "Harry Potter", author: "J.K. Rowling", price: 19.99, published_date: "1997-06-26")
    expect(book).to be_valid
  end

  # Rainy Day 1: Title (You already had this)
  it "is not valid without a title" do
    book = Book.new(title: nil)
    expect(book).to_not be_valid
  end

  # Rainy Day 2: Author
  it "is not valid without an author" do
    book = Book.new(author: nil)
    expect(book).to_not be_valid
  end

  # Rainy Day 3: Price
  it "is not valid without a price" do
    book = Book.new(price: nil)
    expect(book).to_not be_valid
  end

  # Rainy Day 4: Published Date
  it "is not valid without a published date" do
    book = Book.new(published_date: nil)
    expect(book).to_not be_valid
  end
end