class User < ApplicationRecord
    has_many :books
    has_many :grabs
    has_many :borrowed_books, through: :grabs, source: :book
    
    has_secure_password
end
