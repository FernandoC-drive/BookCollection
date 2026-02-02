class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  has_many :users, through: :user_books
  has_many :user_books

  validates :title, :author, :price, :published_date, presence: true
end
