class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :author, :available
  has_many :grabs
  has_many :users, through: :grabs
end
