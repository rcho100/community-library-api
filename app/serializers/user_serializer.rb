class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email
  has_many :grabs
  has_many :books, through: :grabs
end
