class Book < ApplicationRecord
    has_many :grabs
    has_many :users, through: :grabs
end
