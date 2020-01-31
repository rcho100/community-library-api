class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :password
  has_many :grabs
  has_many :books, through: :grabs
end
