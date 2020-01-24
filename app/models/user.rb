class User < ApplicationRecord
    has_many :grabs
    has_many :books, through: :grabs
    
    has_secure_password
end
