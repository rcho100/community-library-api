class User < ApplicationRecord
    has_many :grabs
    has_many :books, through: :grabs
    
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    validates :email, presence: true
    validates_format_of :email, with: /@/
end
