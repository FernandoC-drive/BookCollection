# db/seeds.rb
# Create 5 books
Book.create(title: "The Hobbit", author: "J.R.R. Tolkien", price: 15.00, published_date: "1937-09-21")
Book.create(title: "1984", author: "George Orwell", price: 12.00, published_date: "1949-06-08")
Book.create(title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 10.00, published_date: "1925-04-10")
Book.create(title: "Fahrenheit 451", author: "Ray Bradbury", price: 11.00, published_date: "1953-10-19")
Book.create(title: "Dune", author: "Frank Herbert", price: 20.00, published_date: "1965-08-01")

puts "Seeding complete!"
