class User < ApplicationRecord
    has_many :grabs
    has_many :books, through: :grabs
end
