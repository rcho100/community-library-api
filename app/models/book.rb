class Book < ApplicationRecord
    belongs_to :user
    has_many :grabs
    has_many :borrowers, through: :grabs, source: :user
end
